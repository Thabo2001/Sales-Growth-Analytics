# Sales-Growth-Analytics
End-to-end data analytics project that uncovers the reason behind reduced customer engagement. decreased conversion rates and ways to reduce the marketing expense. Technical tools that are used are MSSQL Server for data storage and cleaning, Python Pandas natural language toolkit for sentiment analysis and Power BI for visualisation. 

## 📊 Project Overview

This project demonstrates an end-to-end data analytics workflow:

- **Data Source**: MS SQL Server database
- **Data Processing**: Python (pandas, PYODBC, natural language toolkit, vader_lexicon)
- **Data Validation**: Excel
- **Visualization**: Power BI dashboards

## 📁 Project Structure

```
Sales-Growth-Analytics/
├── README.md                 # Project documentation
├── sql/
│   ├── ProductsQuery.sql   # Queries to extract products and categorise based on prices
│   ├── CustomerAndGeoQuery.sql  # Queries to join customers to geography
│   ├── CustomerReviewsQuery.sql     #Query to clean the white spaces on the review column
│   ├── CustomerJourneyQuery.sql     # Query to clean the customer journey data
│   └── EngagementQuery.sql #Query to clean the engagement query table 
├── excel + python /
│   ├── customer_reviews_sentiments.py    # Script to run the sentiment analysis on the customer reviews table stored on the MSSQL Server 
│   └── customer_reviews_with_sentiment.xlsx      # CSV file that gets output and converted to .xlsx file after formating into a table 
├── power_bi + visuals/
│   ├──MarketingAnalyticsVisuals.pbix # Main Power BI report
│   ├──Executive summary.png # Screenshot of the executive summary 
│   ├── Conversion Details.png  #Conversion Details
│   ├──Social Media Stats.png  #Social media performance Details
│   ├──Social Media Engagement.png  #Engagement analysis as per the sentiment analysis done 
│   └── easy.png      # Logo of the company 
└── 
```

## 📋 Business Requirements

### Business Problem Key Points 

- **Reduced Customer Engagement**: The number of customer interactions and engagement with the site and marketing content has
declined.​
- **Decreased Conversion Rates**: Fewer site visitors are converting into paying customers.​
- **High Marketing Expenses**: Significant investments in marketing campaigns are not yielding expected returns.​
- **Need for Customer Feedback Analysis**: Understanding customer opinions about products and services is crucial for improving
engagement and conversions.

### Key Performance Indicators (KPIs)
- **Conversion Rate**: Percentage of website visitors who make a purchase.​
- **Customer Engagement Rate**: Level of interaction with marketing content (clicks, likes, comments).​
- **Average Order Value (AOV)**: Average amount spent by a customer per transaction.​
- **Customer Feedback Score**: Average rating from customer reviews.

## 📈 Key Analyses

### 1. Conversion Rate Analysis

#### General Conversion Trend
- **Overview**: Conversion rates fluctuated throughout the year, demonstrating seasonal patterns and potential optimization opportunities
- **Peak Months**: February and July recorded higher conversion success rates
- **Key Insight**: Strong seasonal peaks indicate untapped potential in lower-performing periods
- **Recommendation**: Implement targeted interventions during off-peak months to improve baseline conversion rates

#### Conversion Performance by Month

| Month | Conversion Rate | Status | Notes |
|-------|-----------------|--------|-------|
| **January** | 18.5% | 🔥 Highest | Driven by Ski Boots (150% conversion) - seasonal demand |
| **February** | High | ✅ Strong | Consistent high performer |
| **March** | Moderate | ⚠️ Declining | Post-peak adjustment |
| **April** | Low-Moderate | ⚠️ Below Average | Opportunity for improvement |
| **May** | 4.3% | 🔴 Lowest | No standout products; needs marketing review |
| **June** | Low | ⚠️ Below Average | Summer slump begins |
| **July** | High | ✅ Strong | Second peak performance |
| **August** | Declining | 📉 Downtrend | Start of decline phase |
| **September-December** | Declining | 📉 Declining Trend | Progressive decrease in engagement |

#### Critical Findings

**Highest Conversion Performance**
- **Month**: January
- **Rate**: 18.5%
- **Top Performer**: Ski Boots with 150% conversion rate
- **Driver**: Strong seasonal demand and effective marketing execution
- **Implication**: Successful strategies from January should be analyzed and replicated

**Lowest Conversion Performance**
- **Month**: May
- **Rate**: 4.3%
- **Issue**: No standout products; uniform poor performance
- **Root Cause**: Potential marketing strategy gaps or seasonal demand slump
- **Action Required**: Urgent review of May marketing campaigns and promotional activities

---

### 2. Customer Engagement Analysis

#### Declining Views Trend
- **Pattern**: Strong engagement in Q1 and Q3, significant drop-off in Q4
- **Peak Periods**: February and July show highest audience interest
- **Decline Phase**: 50%+ reduction in views from August onwards
- **Business Impact**: Reduced awareness and reach in latter half of year

#### Interaction Rate Analysis

| Metric | Status | Finding |
|--------|--------|---------|
| **Views** | 📊 Variable | Peak in Feb & July; decline from Aug |
| **Clicks** | 📉 Low | Consistently low vs. views |
| **Likes** | 📉 Low | Minimal engagement ratio |
| **Click-Through Rate** | ⚠️ Concern | Significant gap between views and actions |
| **Engagement Ratio** | ❌ Poor | <5% conversion of views to interactions |

**Key Issue**: Low interaction rates relative to impressions suggest:
- Weak calls-to-action
- Unengaging content format
- Misalignment between content and audience intent
- Need for content optimization

#### Content Type Performance

| Content Type | Performance | Peak Month | Status |
|--------------|-------------|-----------|--------|
| **Blog Content** | 🏆 Best | April & July | Highest views driver |
| **Social Media** | ✅ Steady | Consistent | Moderate engagement |
| **Video Content** | ✅ Steady | Consistent | Moderate engagement |

**Findings**:
- Blog content is the strongest engagement driver
- Social media and video maintain steady but lower engagement
- Opportunity: Enhance video and social strategies to match blog performance

#### Recommendations for Engagement Improvement

1. **Strengthen Call-to-Action (CTA)**
   - Review existing CTAs for clarity and urgency
   - A/B test different CTA messaging
   - Place CTAs more strategically in content

2. **Content Optimization**
   - Analyze high-performing blog content for replication factors
   - Increase video production quality and distribution
   - Create more interactive content formats

3. **Seasonal Strategy**
   - Plan aggressive engagement campaigns for Q4 to counter natural decline
   - Capitalize on Feb/July peaks with sustained content calendar
   - Implement off-season engagement boosters

---

### 3. Customer Feedback & Sentiment Analysis

#### Customer Ratings Distribution
#### Overall Sentiment Breakdown

| Sentiment Type | Count | Percentage | Status |
|---|---|---|---|
| **Positive** | 275 | 64.2% | ✅ Strong |
| **Negative** | 82 | 19.1% | ⚠️ Concerning |
| **Mixed Positive** | [Variable] | [%] | 🟡 Opportunity |
| **Mixed Negative** | [Variable] | [%] | 🟡 Opportunity |
| **Neutral** | [Variable] | [%] | ➖ Baseline |

#### Key Findings

**Positive Sentiment Dominance**
- ✅ **64.2% positive reviews** indicate strong overall customer satisfaction
- 🏆 **64.2% 4-5 star ratings** demonstrate product quality and customer approval
- 💪 **Strong foundation** for brand reputation and word-of-mouth marketing

**Negative Sentiment Present**
- ⚠️ **19.1% negative sentiment** indicates room for improvement
- 📌 **6.1% (26 reviews) give 1-star ratings** - critical pain points requiring immediate attention
- 📌 **13.3% (57 reviews) give 2-star ratings** - significant dissatisfaction drivers

**Mixed Sentiment Opportunity**
- 🟡 **Mixed sentiments represent untapped potential** to improve satisfaction
- 📈 **Converting mixed reviews to positive** could increase ratings by 10-15%
- 🎯 **Targeted improvements** addressing mixed review concerns could boost overall approval

---

### 4. Sentiment Analysis Deep Dive

#### Positive Sentiment Analysis (275 Reviews)

**Drivers of Positive Feedback:**
- Product quality and durability
- Customer service responsiveness
- Delivery speed and packaging
- Value for money
- Product-market fit

**Recommendation**: Amplify these strengths in marketing messaging

#### Negative Sentiment Analysis (82 Reviews)

**Common Complaint Themes:**
- Product defects or quality issues
- Delayed shipping or delivery problems
- Pricing concerns or perceived overcharging
- Poor customer service experiences
- Mismatched product expectations

**Priority Actions**:
1. Analyze root causes of top 3 complaint categories
2. Implement corrective measures for product/service gaps
3. Improve customer service response times
4. Review pricing strategy vs. competitor offerings

#### Mixed Sentiment Opportunity

**Strategic Focus Areas:**
- **Mixed Positive Reviews**: Customers satisfied with some aspects but with minor concerns
  - Action: Address secondary concerns to convert to fully positive
  - Potential Impact: 10-15% increase in overall satisfaction

- **Mixed Negative Reviews**: Customers with significant issues but some redeeming factors
  - Action: Prioritize resolution of primary pain points
  - Potential Impact: Convert detractors into neutral/positive reviewers

---
## 📧 Contact

**Author:** Thabo Rathaba  
**Email:** [thabo.data.1@gmail.com](mailto:thabo.data.1@gmail.com)  
**LinkedIn:** [https://www.linkedin.com/in/thabo-rathaba-228b71185/](https://www.linkedin.com/in/thabo-rathaba-228b71185/)

Feel free to reach out with questions, feedback, or collaboration opportunities! 🙏  

---

## 🙏 Acknowledgments

- Data sourced from [Ali Ahmad Data (YouTube)](https://www.youtube.com/@aliahmaddata)
