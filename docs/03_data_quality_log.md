Data quality checks performed

1. Data types validated
Result: [OK / issues found]

2. Duplicate check-ins (same CustomerID within 10 minutes)
Action: removed as duplicates
Impact: removed [X] rows ([X%] of total)

3. Missing / invalid datetimes
Action: [filtered / corrected / none found]

4. Zero-visit days not present in event log
Action: created calendar table to detect 0-visit days (possible closures or missing data)

5. Outliers / unusual spikes
Action: [reviewed; none / flagged dates]


Assumptions  
A “visit” equals one unique check-in after deduplication.






