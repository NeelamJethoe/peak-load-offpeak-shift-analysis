Columns

CustomerID
Type: integer/text
Description: Unique member identifier (anonymized)
Example: 200233611

Leeftijd = Age
Type: integer
Description: Member age at time of export (assumed static)
Example: 27

Abonnement = Subscription
Type: text
Description: Raw membership/plan label
Example: "Flex lidmaatschap .20 *"

Binnen geweest op = Check-in timestamp
Type: datetime
Description: Check-in timestamp
Example: 2025-01-31 20:55

Derived columns (created in Power Query)
Date (date)
DayOfWeek (0–6 or Mon–Sun)
Hour (0–23)
Timeslot (e.g., hourly bucket)
MonthStart (date)
is_peak (0/1)
DiffMinutes (for dedup, minutes since previous check-in by same member)
