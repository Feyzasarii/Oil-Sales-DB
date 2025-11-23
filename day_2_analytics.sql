 -- En Çok Ciro Getiren Yağlar Raporu
  SELECT 
    O.oil_name,
    O.viscosity_grade,
    SUM(OD.quantity * OD.unit_price) AS total_revenue
FROM
    Order_Details OD
        JOIN
    Oils O ON OD.oil_id = O.oil_id
GROUP BY O.oil_name , O.viscosity_grade
ORDER BY total_revenue DESC
LIMIT 5;
    
    -- Uygulama Alanına Göre Hacim Analizi
   SELECT 
    O.application,
    SUM(OD.quantity * OD.unit_price) AS total_revenue,
    SUM(OD.quantity * O.package_volume) AS total_volume
FROM
    oils O
        JOIN
    order_details OD ON O.oil_id = OD.oil_id
GROUP BY O.application
ORDER BY total_volume DESC;
    
    
    -- Müşteri Segmentasyonu ve Satış Ortalaması
	SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS toplam_harcama,
    AVG(o.total_amount) AS ortalama
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id , c.first_name , c.last_name
ORDER BY toplam_harcama DESC;


	-- Stok Kontrol ve Fırsat Analizi
    SELECT 
    oil_id, oil_name, stock_quantity AS MIKTAR, price AS UCRET
FROM
    oils
GROUP BY oil_id
ORDER BY MIKTAR , UCRET DESC
LIMIT 3;
    