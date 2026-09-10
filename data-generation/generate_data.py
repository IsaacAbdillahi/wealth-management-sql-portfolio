import pandas as pd
import random

# Generate Advisers Dataset

advisers = []

regions = [
    "North",
    "South",
    "Midlands",
    "London",
    "Scotland"
]

for adviser_id in range(1, 21):
    advisers.append({
        "adviser_id": adviser_id,
        "adviser_name": f"Adviser {adviser_id}",
        "region": random.choice(regions)
    })

advisers_df = pd.DataFrame(advisers)

print(advisers_df.head())
