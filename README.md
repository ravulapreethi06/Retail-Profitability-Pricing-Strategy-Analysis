
# Retail Profitability & Pricing Strategy Analysis

**Date:** December 12, 2025  
**Prepared By:** Ravula Preethi  
**Tools:** SQL (CTEs, Window Functions, Aggregations), Power BI  

---

##  Executive Summary
Profit erosion is **driven by aggressive discounting**, not weak demand. Certain categories and regions are structurally unprofitable.  

**Key Metrics:**  
- **Recoverable Profit:** ₹43.28K  
- **High-risk Categories:** Office Supplies, Furniture  
- **High-risk Regions:** East, Central  

**Business Impact:**  
- Enables leadership to enforce **pricing discipline**  
- Prioritizes **high-loss segments for quick profit recovery**  
- Protects revenue while improving margins  

---

##  Business Problem
Despite steady revenue, the business faces inconsistent profitability. Leadership seeks clarity on:  

1. Whether revenue growth converts to profit  
2. Discounting patterns that hurt margins  
3. Actions for **fast, high-impact profit recovery**  

---

##  Data & Methodology

### Data Preparation
- Cleaned and validated **order-level transactional data**  
- Created derived metrics:  
  - Profit Margin %  
  - Loss Amount  
  - Revenue at Risk  
  - Profit per Order  
  - Priority Score  

### Analytical Approach
- **SQL Techniques:**  
  - Aggregations, Joins, CTEs  
  - Window Functions for running totals & ranking  
  - Conditional logic for profit/loss segmentation  
- **Power BI:** Interactive dashboards for visualization & prioritization  
- **Validation:** Cross-checked insights across SQL & Power BI  

**Key Questions Answered:**  
1. Is revenue growth translating to profit?  
2. How do discounts affect profitability?  
3. How much revenue is at risk from unprofitable orders?  
4. Which regions and categories drive losses?  

---

##  Dashboards

**1. Executive Profit Health & Revenue Risk**  
![Dashboard1](<img width="1006" height="646" alt="Screenshot 2026-01-05 095630" src="https://github.com/user-attachments/assets/ce108164-1c68-4713-8e83-c2fb06447dea" />
)  

**2. Pricing & Discount Leakage Analysis**  
![Dashboard2](<img width="1011" height="648" alt="Screenshot 2026-01-05 095719" src="https://github.com/user-attachments/assets/e8d05947-278c-4f09-91be-83dd35f723f4" />
)  

**3. Profit Recovery & Action Prioritization**  
![Dashboard3](<img width="995" height="640" alt="Screenshot 2026-01-05 095747" src="https://github.com/user-attachments/assets/fec6c2ca-56b7-47c6-bc42-9b7cc01ac207" />
)  

*Screenshots show actionable insights and priority segments for recovery.*  

---

##  Key Insights & Recommendations
| Insight | Action | Impact |
|--------|--------|--------|
| ₹0.61M revenue at risk (Furniture & Office Supplies) | Track Revenue at Risk KPI; prioritize high-loss categories | Protects margins without reducing revenue |
| Discounts >30% create ₹468.7K loss-making revenue | Enforce discount caps & approval beyond break-even | Reduces structural losses |
| High revenue ≠ high profit (Technology) | Focus on profit per order & margin efficiency | Improves overall profitability |
| East & Central regions drive most losses | Apply targeted pricing & discount controls | Maximize recoverable profit |
| ₹43.28K recoverable profit in Office Supplies | Correct top loss segments first; monitor via KPIs | Quick, actionable profit recovery |

---

##  Conclusion
Revenue growth alone **does not guarantee profitability**.  
Profit leakage is driven by:  
- Excessive discounting  
- Low-margin categories  
- Regional loss concentration  

**Next Steps:**  
1. Prioritize corrective actions in Office Supplies & Furniture  
2. Enforce disciplined discount governance  
3. Embed **margin-centric KPIs** to monitor recovery  


