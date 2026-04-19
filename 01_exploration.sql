-- =========================================
-- 01. Exploratory Data Analysis
-- =========================================

-- Sample data check
SELECT TOP 10 * FROM bookings;
SELECT TOP 10 * FROM listings;

-- Count records in tables
SELECT COUNT(*) AS total_bookings FROM bookings;
SELECT COUNT(*) AS total_listings FROM listings;

-- Listings by location
SELECT 
    location, 
    COUNT(*) AS total_listings
FROM listings
GROUP BY location;

-- Listings by room type
SELECT 
    room_type, 
    COUNT(*) AS total_listings
FROM listings
GROUP BY room_type;