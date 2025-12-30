# Marketing-channel-Efficiency-analysis

## Project Background

In this project, I analyze the marketing performance of a D2C  brand across different digital marketing channels.

The company is investing in multiple channels like Google Search , Google Display , Meta ads , Youtube ads , but overall performance is not consistent. Some channels are driving high traffic but low conversions, while others are converting well with lower reach.

The main goal of this analysis is to understand **which marketing channels are efficient and which are not**, so that future marketing budgets can be allocated more effectively.

By evaluating key metrics such as impressions, clicks, conversions, cost, and revenue, this analysis helps identify where money is being spent wisely and where performance can be improved.

This project is focused at the **channel level** (not campaign or keyword level) to keep the analysis aligned with high-level business decision-making and its the future scope of the project.

**Insights and recommendation are provided in the following areas :**

**Awareness channel performance :** Evaluation of awareness driving  channels on the basis of impressions and clicks.

**Conversion channel performance** :  Evaluation of conversion driving channels on the basis of return on ads spend, cost given to advertisers and conversions.

**Investment recommendations** : Providing recommendation to allocate budget to  efficient   channels while evaluating each ones strength and weakness.

## Dataset Overview

The dataset used in this project is a **synthetic dataset** generated (10,000 rows) to closely resemble real-world digital marketing data used by D2C brands. 

Although the data is not from a real company, the structure, metrics, and patterns are realistic and commonly seen in industry marketing analytics.

The dataset contains daily marketing performance data across multiple channels and includes metrics such as:

- Impressions
- Clicks
- Conversions
- Cost
- Revenue
- Channel, campaign, and audience-related attributes

To ensure data reliability, a separate **data quality checks sheet** is included where issues like missing values, duplicate records, zero conversions, and inconsistent formats are identified and handled.

**An insights log is also maintained to track key observations discovered during exploratory analysis before building the final dashboard and recommendations.**

This dataset is sufficient for performing end-to-end analysis, including data cleaning, exploratory analysis, channel efficiency comparison, and business-focused insights.

## Summary

1. Youtube ads delivered highest impression share of ~39% which is ~19% higher then google display 
2. Google display performed better than Youtube ads in engaging audience with ~32%  higher CTR then Youtube ads 
3. Google search outperformed meta ads with ROAS of ₹4164 - 2.4x higher then meta ads followed by CVR of ~7% which is 2.3x higher then meta ads and lowest CPA of ~₹46 which is ~59% lower then meta ads
4. Google display showed highest CPA ~₹34172 while very low conversions . Though its goal was not conversion but it was taking a lot of budget also with less efficient awareness performance compare to Youtube ads , so it became a candidate to pull out budget from and invest in channels with conversions goals like Google Search and Meta ads

## Recommendations

1. Keep Youtube ads to reach maximum audience as its performing good in terms of awareness goals.
2. Keep Google Display also for top of the funnel goal because its performed decent in terms of engaging audience with a CTR ~25% higher than Youtube ads .It can be best utilized with our best performing ad copies in future
3. Focus majority of conversion budget to Google search followed by Meta ads as they performed good in bottom of the funnel conversions by delivering better ROAS and lower CPA
4. Reduce budget from google display specifically from the conversions focused campaigns and realocate budget to google search and meta ads for conversions and youtube ads for awareness.
