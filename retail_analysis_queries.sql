SELECT 
    oi.order_id, 
    p.product_name, 
    oi.add_to_cart_order
FROM instacart.order_items oi
JOIN instacart.products p ON oi.product_id = p.product_id
WHERE oi.order_id = 2;

SELECT 
    p.product_name, 
    COUNT(oi.product_id) AS total_ventas
FROM instacart.order_items oi
JOIN instacart.products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_ventas DESC
LIMIT 10;

SELECT 
    order_hour_of_day, 
    COUNT(order_id) AS total_pedidos
FROM instacart.orders
GROUP BY order_hour_of_day
ORDER BY total_pedidos DESC;

-- Analizando los días de mayor volumen de pedidos (Peak Traffic Days)
SELECT 
    order_dow AS day_of_week, 
    COUNT(order_id) AS total_orders,
    ROUND(COUNT(order_id) * 100.0 / SUM(COUNT(order_id)) OVER(), 2) AS percentage_of_total
FROM instacart.orders  -- <--- Aquí agregamos el esquema
GROUP BY order_dow
ORDER BY total_orders DESC;

-- Top 10 Departamentos con más ventas
SELECT 
    d.department, 
    COUNT(oi.product_id) AS total_items_sold
FROM instacart.order_items oi  -- <--- Nombre corregido según tu imagen
JOIN instacart.products p ON oi.product_id = p.product_id
JOIN instacart.departments d ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY total_items_sold DESC
LIMIT 10;

-- Porcentaje de recompra (Reorder Rate) por Departamento
SELECT 
    d.department, 
    COUNT(oi.product_id) AS total_sold,
    SUM(oi.reordered) AS total_reordered,
    ROUND(AVG(oi.reordered) * 100, 2) AS reorder_rate_percentage
FROM instacart.order_items oi
JOIN instacart.products p ON oi.product_id = p.product_id
JOIN instacart.departments d ON p.department_id = d.department_id
GROUP BY d.department
ORDER BY reorder_rate_percentage DESC;

-- Analizando las horas de mayor demanda (Peak Order Hours)
SELECT 
    order_hour_of_day, 
    COUNT(order_id) AS total_orders
FROM instacart.orders
GROUP BY order_hour_of_day
ORDER BY total_orders DESC;