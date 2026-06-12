# Customer Retention & Churn Reduction Analysis

**Author:** Adithya  
**Portfolio for:** Product Analyst / Data Analyst  
**Tools:** SQL · Python · Power BI  
**Dataset:** IBM Telco Customer Churn · 7,043 records

---

## What This Project Is About

Telecom companies lose customers every month. Some customers leave within weeks. Others stay for years. This project tries to answer two simple questions: **Who leaves, and what can we do about it?**

I analyzed 7,043 customer records to understand churn patterns. The data includes contract types, payment methods, monthly charges, and service usage. Based on what I found, I built a Power BI dashboard and wrote a set of recommendations that can be tested through experiments.

This is not just a churn dashboard. It is a retention study that connects data to business action.

---

## What I Found

**Contract type is the strongest predictor of churn.**

Customers on month-to-month plans leave at a rate of 42.7 percent. That is fifteen times higher than customers on two-year contracts, who leave at just 2.8 percent. More than half of all customers — about fifty-five percent — are on month-to-month plans. This is a large group with high risk.

**Payment method matters almost as much.**

Customers who pay by electronic check churn at 45.3 percent. Customers on auto-pay — whether bank transfer or credit card — churn at around 15 to 16 percent. The gap between these two groups is nearly thirty percentage points.

**The first year is critical.**

Forty-seven percent of all churn happens in the first twelve months. Customers who stay beyond one year become much more loyal. After four years, the churn rate drops to just 9.5 percent.

**Other patterns worth noting.**

Senior citizens churn at 41.7 percent — nearly double the rate of non-seniors. Fiber optic internet users churn at 41.9 percent, which is more than twice the rate of DSL users. Customers without online security churn at 41.8 percent, compared to 14.7 percent for those who have it. Customers without a partner churn at 33.1 percent versus 19.7 percent for those with a partner. Paperless billing users churn at 33.6 percent compared to 16.3 percent for paper bill users.

**Revenue at risk.**

Total monthly revenue across all customers is about 4.56 lakh rupees. Customers who have already churned represent 1.39 lakh rupees in monthly revenue at risk. That is about 30.5 percent of total monthly revenue. Annualized, this comes to roughly 16.7 lakh rupees at risk.

Under conservative assumptions, reducing churn by 10 percent could save between 1.2 and 1.5 lakh rupees annually.

---

## Cohort Retention Analysis

A cohort is a group of customers who signed up in the same month. Tracking how these groups behave over time tells us whether retention is improving or getting worse.

Here is what the cohort analysis revealed.

For month-to-month customers, retention drops sharply in the first three months. Month 1 retention starts at 100 percent. By Month 3, it falls to 55 to 60 percent. By Month 6, it is down to 45 to 50 percent. By Month 12, only 40 to 45 percent remain. The biggest drop — about 40 to 45 percent — happens between Month 1 and Month 3.

For one-year contract customers, the pattern is very different. Retention stays high. Month 3 retention is 90 to 95 percent. Month 6 retention is 85 to 90 percent. Month 12 retention is 80 to 85 percent. The drop between Month 1 and Month 3 is only 5 to 10 percent.

For two-year contract customers, retention is even stronger. Month 3 retention is 95 to 98 percent. Month 6 retention is 92 to 95 percent. Month 12 retention is 90 to 95 percent. The drop between Month 1 and Month 3 is just 2 to 5 percent.

The key takeaway: the first ninety days are critical. If a customer on a month-to-month plan survives past three months, their retention improves significantly. But most of them never get there.

---

## Recommendations Turned into Experiments

A good analysis leads to action. But action without testing is just guessing. So I turned each recommendation into an experiment that can be A/B tested.

**Experiment 1: Annual upgrade nudge**

The problem: month-to-month customers churn at 42.7 percent, fifteen times higher than two-year contract holders.

The intervention: show an in-app notification at month eleven offering a 10 to 15 percent discount on an annual plan.

The experiment design would involve three variants. The control group sees standard pricing with no offer. Treatment A sees a 10 percent annual discount. Treatment B sees a 15 percent annual discount plus free online security. Each group would need about 3,000 customers to reach statistical significance.

Success metrics would include the annual contract upgrade rate as the primary measure. Secondary measures would include six-month retention. Guardrail metrics would include refund requests, which should not increase by more than 2 percent.

**Experiment 2: Auto-pay incentive**

The problem: electronic check users churn at 45.3 percent compared to 15.2 percent for auto-pay users.

The intervention: offer a 50 rupee monthly credit for the first six months after switching to auto-pay.

This experiment would use a switchback design — alternating the offer monthly to avoid customer contamination. The primary success metric would be auto-pay conversion rate. The secondary metric would be thirty-day delinquency reduction. The guardrail metric would be support complaints related to billing.

**Experiment 3: First-year retention program**

The problem: 47.4 percent of all churn happens in the first twelve months.

The intervention: an automated engagement sequence at months three, six, and nine, plus a loyalty credit at month six.

This would use a pre-post analysis with a matched control group. The primary success metric would be twelve-month retention rate. Secondary metrics would include login frequency and support ticket volume. The guardrail metric would be cost per retained customer, which should stay below three times the monthly charge.

---

## Prioritization Matrix

Not all recommendations are equal. Some deliver high impact with low effort. Others take more work for less return.

Based on business impact and implementation effort, here is how these recommendations rank.

**First priority: Annual upgrade nudge.** Estimated monthly impact is 50,000 to 60,000 rupees. Implementation effort is medium — about three out of five. The priority score is high.

**Second priority: Auto-pay incentive.** Estimated monthly impact is 25,000 to 30,000 rupees. Implementation effort is low — about two out of five. The priority score is solid.

**Third priority: Online security bundle.** Estimated monthly impact is 20,000 to 25,000 rupees. Implementation effort is medium — about three out of five.

**Fourth priority: First-year retention program.** Estimated monthly impact is 15,000 to 20,000 rupees. Implementation effort is high — about four out of five.

The recommendation is to start with the annual upgrade nudge, then run the auto-pay incentive test in parallel. These two together address the largest segments of risk.

---

## Limitations and Next Steps

This analysis uses synthetic IBM Telco data. Real-world churn analysis would require different data and methods.

**Dataset limitations.** There is no daily event-level customer interaction data. There is no support ticket resolution history. There is no competitor pricing or promotion data. There is no marketing campaign response data.

**Methodology limitations.** Correlation does not imply causation. All recommendations should be validated through controlled A/B tests before full rollout. The logistic regression model predicts churn risk but does not identify optimal intervention timing. Financial estimates are directional, not guaranteed.

**Further steps for production implementation.**

First, run an A/B test for the annual upgrade nudge. This would take about two weeks to set up and four weeks to reach statistical significance.

Second, start tracking behavioral events such as login frequency and feature usage. These are leading indicators of churn and would improve the model. This would take about four weeks.

Third, build a real-time churn scoring model that can trigger retention campaigns automatically. This would take about eight weeks.

Fourth, deploy retention campaigns based on churn risk scores. This would take about twelve weeks.

Each recommendation should be tested with a minimum sample size of 3,000 customers per variant to achieve 90 percent power and 95 percent confidence.

---

## Dashboard Preview

### Page 1: Executive Summary
[<img width="979" height="560" alt="Page 1" src="https://github.com/user-attachments/assets/723c3e8d-48c8-4200-b905-0456e76224db" />](https://github.com/Tej519/Customer-Retention-Churn-Reduction-Analysis/blob/main/screenshots/Page%201.png?raw=true)

### Page 2: Customer Segments
<img width="977" height="557" alt="Page 2" src="https://github.com/user-attachments/assets/961b01e3-3b67-43c4-bb29-fed538238d64" />

### Page 3: Revenue Impact
<img width="972" height="559" alt="Page 3" src="https://github.com/user-attachments/assets/c8196dc8-d823-44a0-8da5-3f4b495298f4" />

### Page 4: Recommendations
<img width="975" height="556" alt="Page 4" src="https://github.com/user-attachments/assets/07b45aae-73d5-4428-a4bb-a02e39cb062e" />

---

## How This Project Was Built

**Data extraction.** SQL was used to segment customers by contract type, tenure, payment method, and service usage. Five analytical queries answered specific business questions about churn patterns.

**Data cleaning.** Python with the Pandas library handled missing values in the TotalCharges column, where eleven records contained whitespace instead of nulls. Data types were verified and corrected.

**Analysis.** A logistic regression model built with scikit-learn identified the strongest predictors of churn. Contract type, monthly charges, and tenure emerged as the top three drivers.

**Visualization.** All insights were compiled into a four-page Power BI dashboard with a consistent dark theme. The dashboard includes KPI cards, bar charts, line charts, donut charts, a what-if parameter for churn simulation, and recommendation cards.

**Deployment.** The complete project — code, SQL queries, dashboard file, screenshots, and this case study — is hosted on GitHub.
