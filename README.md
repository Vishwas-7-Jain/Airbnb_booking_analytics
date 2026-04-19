Airbnb Booking Analytics

📌 Objective

Analyze Airbnb booking data to understand customer behavior, identify high-performing segments, and evaluate factors influencing occupancy and demand patterns.

⸻

📊 Dataset

This project uses a synthetic dataset generated using Python to simulate real-world Airbnb booking scenarios.

* Listings: Property details (location, room type, price)
* Bookings: Transaction-level data (check-in, check-out, booking dates)

⸻

🧠 Key Analyses

1. Exploratory Data Analysis

* Distribution of listings across locations and room types
* Mumbai has the highest number of listings
* Shared rooms dominate supply

⸻

2. Stay Duration Analysis

* Average stay length ≈ 3.5 days
* No strong concentration around a specific duration
* Indicates short-term and varied usage patterns

⸻

3. Listing Performance

* Top listings show similar booking days
* Demand is relatively distributed rather than highly concentrated

⸻

4. Segment-Level Performance

* Mumbai & Bangalore: Entire homes perform best
* Delhi: Private rooms perform best
* Indicates location-specific customer preferences

⸻

5. Occupancy Analysis

* Shared rooms in Delhi show highest occupancy
* Private rooms in Bangalore show lowest occupancy
* Suggests variation in demand-supply balance across segments

⸻

6. Price vs Demand

* No strong relationship observed between price and occupancy
* Indicates demand is influenced by factors beyond pricing

⸻

🛠 Tools Used

* SQL (CTEs, Aggregations, Window Functions)
* Python (Pandas, Matplotlib)
* Data Visualization

⸻

📈 Key Insights

* Demand patterns vary significantly by location
* Customer behavior is driven by short-duration stays
* Pricing alone does not explain occupancy trends
* Market dynamics differ across segments (room type + location)

⸻

📎 How to Run

1. Load CSV files into SQL Server
2. Run queries from /sql folder
3. Execute Python notebook for visual analysis

⸻

👤 Author

Vishwas Jain
