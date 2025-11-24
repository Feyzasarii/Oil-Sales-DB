    DELIMITER $$

CREATE PROCEDURE CreateNewOilOrder(
    IN p_customer_id INT,
    IN p_oil_id INT,
    IN p_quantity INT
)
BEGIN
    -- Deklarasyonlar (İşlem sırasında kullanılacak geçici değişkenler)
    DECLARE v_stock_count INT;
    DECLARE v_unit_price DECIMAL(10, 2);
    DECLARE v_order_id INT;

    -- 1. Stok ve Fiyat Bilgilerini Çekme
    SELECT
        stock_quantity,
        price
    INTO
        v_stock_count,
        v_unit_price
    FROM
        Oils
    WHERE
        oil_id = p_oil_id;

    -- 2. Stok Kontrolü (Hata Durumları)
    IF v_stock_count IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'HATA: Ürün ID bulunamadı.';
    END IF;

    IF v_stock_count < p_quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'HATA: Yeterli stok yok.';
    END IF;

    -- İşlemi başlatma (Transaction)
    START TRANSACTION;

    -- 3. Yeni Siparişi Ekleme
    INSERT INTO Orders (customer_id, order_date, order_status, total_amount)
    VALUES (p_customer_id, NOW(), 'Completed', 0.00);

    -- Yeni eklenen order_id'yi alıyoruz
    SET v_order_id = LAST_INSERT_ID();

    -- 4. Sipariş Detayını Ekleme
    INSERT INTO Order_Details (order_id, oil_id, quantity, unit_price)
    VALUES (v_order_id, p_oil_id, p_quantity, v_unit_price);

    -- 5. Stok Miktarını Güncelleme (Stoktan düşme)
    UPDATE Oils
    SET stock_quantity = stock_quantity - p_quantity
    WHERE oil_id = p_oil_id;

    -- 6. Total Amount'ı Güncelleme (Sipariş detayından hesaplama)
    UPDATE Orders
    SET total_amount = p_quantity * v_unit_price
    WHERE order_id = v_order_id;
    
    -- Her şey başarılıysa, değişiklikleri onayla
    COMMIT;
    
    SELECT CONCAT('Sipariş başarıyla oluşturuldu. Order ID: ', v_order_id) AS Result;

END$$

DELIMITER ;
    
    
    
    
    
    
    
    
    
    
    DELIMITER $$

CREATE TRIGGER tr_restore_stock_on_cancel
AFTER UPDATE ON Orders  -- Orders tablosunda bir UPDATE işlemi olduktan sonra çalış
FOR EACH ROW            -- Güncellenen her satır için çalıştır

BEGIN
    -- Kontrol: Sipariş durumu eskisinde 'Cancelled' DEĞİLDİ ve yenisinde 'Cancelled' OLDUYSA çalış.
    -- Bu, aynı anda birden fazla kez çalışmasını engeller.
    IF NEW.order_status = 'Cancelled' AND OLD.order_status != 'Cancelled' THEN
        
        -- İptal edilen siparişin detaylarını bul ve stoğa ekle
        UPDATE Oils O
        JOIN Order_Details OD ON O.oil_id = OD.oil_id
        SET 
            O.stock_quantity = O.stock_quantity + OD.quantity -- Stoğa geri ekleme
        WHERE 
            OD.order_id = NEW.order_id;
            
        -- Opsiyonel: Sipariş detayları artık tamamlanmadığı için Order_Details tablosunu temizlemek isterseniz bu komutu ekleyebilirsiniz.
        -- DELETE FROM Order_Details WHERE order_id = NEW.order_id;
        
    END IF;
END$$

DELIMITER ;
  