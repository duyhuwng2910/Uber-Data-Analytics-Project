# Uber Data Analytics Project

## Introduction

The goal of this project is to perform data analytics on Uber data using various tools and technologies, including Google Cloud Platform Storage, Python, Compute Instance, Mage Data Pipeline Tool, BigQuery, and Looker Studio.

## Architecture 
<img src="Architecture.png">

## Technology Used
### Programming Language 
- Python

### Google Cloud Platform
1. Google Storage
2. Compute Instance 
3. BigQuery
4. Looker Studio

### Modern Data Pipeine Tool 
- Link: https://www.mage.ai/
- Contibute to this open source project - https://github.com/mage-ai/mage-ai


## Dataset Used
TLC Trip Record Data
Yellow and green taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. 

Here is the dataset used in the video - https://storage.googleapis.com/uber-data-analytics-project-nguyen-duy-hung/uber_dataset_2021-04.csv

More information about the dataset can be found here:
1. Website - https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
2. Data Dictionary - https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf

## Data Model
<img src="Data Models-Uber Data Analytics Project.png">

## Dashboard
- I took some charts and graphs in the Looker dashboard https://lookerstudio.google.com/reporting/b5fec712-41b4-477c-9690-59f9b7261180

## Launching the project
### Run the Notebook file
- If you want to run this file, I suggest you go to the above dataset website to get the newest dataset in Parquet type
- Since the size of this file when I convert from Parquet type to CSV file is too big, I can put this data file into this Repo
- In this file, I have written ETL code to get the data frame of tables in Star schema

1. Create GCP account
2. Create Buckets in Cloud Storage, then public your dataset (if you want)
3. Create the VM machine instance, configure the setting
4. Create the Firewall in VPC network
5. Go to Mage interface, then create the ETL pipeline
6. Create Credential in APIs & Services
7. Create a dataset in Bigquery Studio, then export the data from the Exporter file in Mage to this dataset
8. Create an analytic file in SQL language
9. Create a Dashboard in Looker, then import the above analytic file and create your dashboard
