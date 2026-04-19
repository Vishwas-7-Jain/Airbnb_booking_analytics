-- =========================================
-- 03. Best Room Type per Location
-- =========================================

WITH cte AS (
    SELECT 
        listing_id,
        SUM(DATEDIFF(DAY, checkin_date, checkout_date)) AS book_days
    FROM bookings
    GROUP BY listing_id
)
SELECT 
    location,
    room_type,
    ROUND(avg_book_days, 2) AS avg_book_days
FROM (
    SELECT 
        l.location,
        l.room_type,
        AVG(c.book_days * 1.0) AS avg_book_days,
        ROW_NUMBER() OVER (
            PARTITION BY l.location 
            ORDER BY AVG(c.book_days * 1.0) DESC
        ) AS rn
    FROM cte c
    JOIN listings l
        ON c.listing_id = l.listing_id
    GROUP BY l.location, l.room_type
) t
WHERE rn = 1;