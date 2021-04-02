# COVID-19-Hospitalization-Trends

**This repository contains the  code used to analyze United States National and Regional COVID-19 hospitalization trends in both children and adult populations.**

**[View Completed Analysis, Stats, and Figures](https://meghutch.github.io/Hospitalization_Trends.html)**

## About the Data

The analysis examines COVID-19 Hospitalizations as reported weekly from all 50 states including the District of Columbia, from July 31, 2020 until March 18, 2021.

Data was acquired through the [United States Department of Health and Human Services (HHS)](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/g62h-syeh)[1,2]

[Helpful FAQ Resource](https://github.com/CareSet/COVID_Hospital_PUF?src=hd)[3]

Hospitalization rates were standardized per 100,000 adults or children using the U.S Census Bureau's 2020 National and Regional population estimates[4]

## **To Run Notebook**

**1. Clone this repo:**

```git clone https://github.com/meghutch/COVID-19-Hospitalization-Trends.git```

**2. Run Hospitalizations_Trends.Rmd**

**3. (Optional): Download latest data from the [(HHS)](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/g62h-syeh) and replace the new file name:**

**Alternatively, one may choose to run Hospitalizations_Trends_Hospital_Level.Rmd to conduct a similar analysis on HHS [Hospital level data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/g62h-syeh)**

```hhs_data <- read_csv('data/new_file_name_here.csv)```

## References

1. COVID-19 Reported Patient Impact and Hospital Capacity by State Timeseries. HealthData Web site. Updated March 20, 2021. Accessed March 25, 2021. https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/g62h-syeh

2. COVID-19 Guidance for Hospital Reporting and FAQs. Human and Health Services Web site. U.S. Department of Human and Health Services. Updated January 21, 2021. Accessed February 18, 2020. https://www.hhs.gov/sites/default/files/covid-19-faqs-hospitals-hospital-laboratory-acute-care-facility-data-reporting.pdf

3. Facility COVID PUF Community FAQ. Github Web site. Updated December 15, 2020. Accessed February 24, 2021. https://github.com/CareSet/COVID_Hospital_PUF?src=hd

4. SC-EST2020-18+POP-RES. U.S. Census Bureau, Population Division. 2020. Accessed February 9, 2020. https://www2.census.gov/programs-surveys/popest/datasets/2010-2020/national/totals/

Data is publicly available under the **Public Domain U.S. Government** [license](https://www.usa.gov/government-works)[1]



