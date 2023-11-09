BULK INSERT sub_category
FROM 'C:\Users\karam\OneDrive\Documents\Git-Projects\kickstarter-trends\sub_category.csv'
WITH
(
    FIRSTROW = 2, -- if your CSV file has a header row
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)
