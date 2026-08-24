import pandas as pd

# 1. Load dataset
df = pd.read_csv('StudentsPerformance.csv')

# 2. Shape
print(f"Shape: {df.shape}\n")

# 3. List columns
print(f"Columns:\n{df.columns.tolist()}\n")

# 4. Data types
print(f"Data Types:\n{df.dtypes}\n")

# 5. Missing values
print(f"Missing Values:\n{df.isnull().sum()}\n")

# 6. Summary statistics
print("Summary Statistics:")
print(df.describe())
