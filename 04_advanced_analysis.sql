-- =========================================
-- 04. Occupancy Analysis
-- =========================================

SELECT 
    l.location,
    l.room_type,
    SUM(DATEDIFF(DAY, checkin_date, checkout_date)) * 1.0 / 180 AS occupancy_rate
FROM bookings b
JOIN listings l
    ON b.listing_id = l.listing_id
GROUP BY l.location, l.room_type
ORDER BY occupancy_rate DESC;

-- Monthly booking trend
SELECT 
    FORMAT(booking_date, 'yyyy-MM') AS month,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY FORMAT(booking_date, 'yyyy-MM')
ORDER BY month;


-- Repeat users
SELECT 
    user_id,
    COUNT(*) AS bookings
FROM bookings
GROUP BY user_id
HAVING COUNT(*) > 1;