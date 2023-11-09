import pandas as pd
import statsmodels.api as sm

# Load data from the CSV file
data = pd.read_csv('pledged-vs-duration.csv')

# Extract campaign duration and dollars pledged columns
campaign_duration = data['campaign_duration']
dollars_pledged = data['dollars_pledged']

# Add a constant term (intercept)
X = sm.add_constant(campaign_duration)

# Fit the linear regression model
model = sm.OLS(dollars_pledged, X).fit()

# Retrieve regression results
slope = model.params['campaign_duration']
intercept = model.params['const']
p_value = model.pvalues['campaign_duration']
r_squared = model.rsquared

# Print the results
print(f"Slope (Coefficient): {slope}")
print(f"Intercept: {intercept}")
print(f"P-Value: {p_value}")
print(f"R-Squared: {r_squared}")
