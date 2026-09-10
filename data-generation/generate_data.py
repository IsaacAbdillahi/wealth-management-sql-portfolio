import pandas as pd
import random
from datetime import datetime

# ------------------------
# ADVISERS
# ------------------------

regions = [
    "London",
    "North West",
    "Midlands",
    "Scotland",
    "South East"
]

advisers = []

for adviser_id in range(1, 21):
    advisers.append({
        "adviser_id": adviser_id,
        "adviser_name": f"Adviser {adviser_id}",
        "region": random.choice(regions)
    })

advisers_df = pd.DataFrame(advisers)

# Save CSV
advisers_df.to_csv("../datasets/advisers.csv", index=False)

print("Advisers generated.")
