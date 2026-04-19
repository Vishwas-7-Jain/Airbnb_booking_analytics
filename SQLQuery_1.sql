-- =========================================
-- 02. Core Metrics
-- =========================================


-- Average stay length
SELECT 
    AVG(DATEDIFF(DAY, checkin_date, checkout_date) * 1.0) AS avg_stay
FROM bookings;

-- Total booking days per listing
SELECT 
    listing_id,
    SUM(DATEDIFF(DAY, checkin_date, checkout_date)) AS total_booking_days
FROM bookings
GROUP BY listing_id;

-- Minimum, Maximum stay
SELECT 
    MIN(DATEDIFF(DAY, checkin_date, checkout_date)) AS min_stay,
    MAX(DATEDIFF(DAY, checkin_date, checkout_date)) AS max_stay
FROM bookings;