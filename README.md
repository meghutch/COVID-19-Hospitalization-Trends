# COVID-19-Hospitalization-Trends

**This repository contains the  code used to analyze United States National and Regional COVID-19 hospitalization trends in both children and adult populations.**

**[View Completed Analysis, Stats, and Figures](https://meghutch.github.io/Hospitalization_Trends.html)**

## About the Data

The analysis examines COVID-19 Hospitalizations as reported weekly from all 50 states including the District of Columbia, from July 31, 2020 until February 18, 2021.

Data was acquired through the [United States Department of Health and Human Services (HHS)](https://healthdata.gov/dataset/covid-19-reported-patient-impact-and-hospital-capacity-facility)[1,2]

A complete [Data Dictionary](https://healthdata.gov/covid-19-reported-patient-impact-and-hospital-capacity-facility-data-dictionary)[3] has been provided by the HHS in addition to a [Helpful FAQ Resource](https://github.com/CareSet/COVID_Hospital_PUF?src=hd)[4]

Hospitalization rates were standardized per 100,000 adults or children using the U.S Census Bureau's 2020 National and Regional population estimates[5]

## **To Run Notebook**

**1. Clone this repo:**

```git clone https://github.com/meghutch/COVID-19-Hospitalization-Trends.git```

**2. Run Hospitalizations_Trends.Rmd**

**3. (Optional): Download latest data from the [(HHS)](https://healthdata.gov/dataset/covid-19-reported-patient-impact-and-hospital-capacity-facility) and replace the new file name:**

```hhs_data <- read_csv('data/new_file_name_here.csv)```

### References

1. COVID-19 Reported Patient Impact and Hospital Capacity by Facility. HealthData Web site. Updated February 21, 2021. Accessed February 22, 2021. https://healthdata.gov/dataset/covid-19-reported-patient-impact-and-hospital-capacity-facility

2. COVID-19 Guidance for Hospital Reporting and FAQs. Human and Health Services Web site. U.S. Department of Human and Health Services. Updated January 21, 2021. Accessed February 18, 2020. https://www.hhs.gov/sites/default/files/covid-19-faqs-hospitals-hospital-laboratory-acute-care-facility-data-reporting.pdf

3. COVID-19 Reported Patient Impact and Hospital Capacity by Facility Data Dictionary. HealthData Web site. Updated December 28, 2020. Accessed February 24, 2021. https://healthdata.gov/covid-19-reported-patient-impact-and-hospital-capacity-facility-data-dictionary

4. Facility COVID PUF Community FAQ. Github Web site. Updated December 15, 2020. Accessed February 24, 2021. https://github.com/CareSet/COVID_Hospital_PUF?src=hd

5. SC-EST2020-18+POP-RES. U.S. Census Bureau, Population Division. 2020. Accessed February 9, 2020. https://www2.census.gov/programs-surveys/popest/datasets/2010-2020/national/totals/

Contains information from COVID-19 Reported Patient Impact and Hospital Capacity by Facility which is made available under the [ODC Attribution License](https://opendatacommons.org/licenses/by/1-0/).



