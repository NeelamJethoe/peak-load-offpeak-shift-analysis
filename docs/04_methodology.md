Methodology overview

1. Data ingestion and cleaning (Power Query)
import from Excel table
set data types
create time features (Date, DayOfWeek, Hour, Timeslot, MonthStart)

2. Deduplication
sort by CustomerID and timestamp
compute minutes since previous check-in
treat check-ins within 10 minutes as duplicates of the same visit

3. Demand mapping
build weekday × timeslot matrix
visualize as heatmap
evaluate stability across months (seasonality)

4. Peak definition (data-driven)
rank weekday × timeslot demand
label top 20% as PEAK, remainder as OFFPEAK
sensitivity check: compare with 15% and 25%

5. Visit labeling
add is_peak to each visit via lookup on weekday × timeslot

6. Member-level features
total visits, peak visits, off-peak visits
peak_share
visits_per_month, active_months, time-slot variety

7. Segmentation
Peak-only, Peak-leaning, Mixed, Off-peak based on peak_share
Volume buckets (Low/Medium/High) based on visits_per_month

8. Shift potential scenarios
conservative / realistic / optimistic shift rates
estimate peak visits that could be moved to off-peak
