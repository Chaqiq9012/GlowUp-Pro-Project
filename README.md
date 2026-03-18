<div align="center">

![Glow Up](https://github.com/user-attachments/assets/47632bbb-14c4-43df-823b-e0a43f991d0a)

# 🌟 GlowUp Pro: The Mystery of the Leaky Funnel  
### From Raw SQL to C-Suite Strategy: A Data-Driven E-Commerce Rescue Mission

</div>

---

## ⚠️ Data Usage & Permission
> This project is based on a **simulated dataset (120,000+ rows)** designed to replicate real-world e-commerce behavior.  
> The dataset and business scenario were created **with full permission from the project owner for educational and portfolio use**.  
> All insights, analysis, and strategies reflect **real business logic and industry practices**.

---

## 📖 The Prologue: A Crowded Room, An Empty Register

Every e-commerce brand prays for traffic. Last quarter, **GlowUp Pro** got exactly that: a **+16.6% surge in visitors**.  

But something didn’t make sense…  

Despite the record-breaking traffic, **revenue dropped**.

The business was running faster… just to stay in the same place.

---

## 🎯 Project Objective

Identify:
- Why **revenue declined despite higher traffic**
- Where the **conversion funnel is leaking**
- Which **channels, categories, and segments are underperforming**
- How to **increase revenue by +15% using data-driven strategy**

---

## 🧠 Business Questions

- Which traffic sources are **profitable vs. losing money**?
- Why are users **not converting**?
- Which **customer segments** are mismatched?
- Is **logistics (delivery time)** impacting conversions?
- How can we **optimize marketing spend** for maximum ROI?

---

## 🕵️‍♂️ Chapter 1: Interrogating the Database (SQL)

To find the leak, I went beyond dashboards and directly queried **120,000+ records** using SQL.

### 🔍 1. Conversion Leak by Channel

- Social Ads: **High traffic, low conversion**
- Email: **Low traffic, high conversion**

📌 Insight:
> Traffic volume ≠ business success. Conversion quality matters.

---

### 💸 2. ROAS (Return on Ad Spend) Analysis

```sql
SELECT 
    TrafficSource,
    SUM(ProductPrice * Quantity * Converted) AS Total_Revenue,
    SUM(MarketingCost) AS Total_Marketing_Spend,
    ROUND(SUM(ProductPrice * Quantity * Converted) / NULLIF(SUM(MarketingCost), 0), 2) AS ROAS
FROM glowuppro
GROUP BY TrafficSource
HAVING SUM(MarketingCost) > 0
ORDER BY ROAS ASC;
```

📌 Key Finding:
- Social Ads → **Negative / weak ROI**
- Email & Search → **Highly profitable**

---

### 👥 3. Demographic & Logistics Friction

- Gen Z Females → **High conversion**
- Male 45+ → **Very low conversion**
- North Region → **10+ days delivery → high drop-off**

📌 Insight:
> Wrong audience + slow delivery = lost revenue

---

## 📊 Chapter 2: Visualizing the Problem (Power BI)

Data alone doesn’t convince — **visual storytelling does**.

### 🔥 Dashboard Highlights

📈 **AOV Alert**
- Orders stable
- Revenue dropping → **lower basket size**

📊 **Hero vs Anchor**
- Skincare → high conversion (Hero)
- Apparel → low conversion (Anchor)

🚚 **The Speed Tax**
- Conversion drops sharply after **5+ delivery days**

---

### 📸 Dashboard Preview

<img width="1164" height="636" alt="Screenshot 2026-03-18 184445" src="https://github.com/user-attachments/assets/fdd2da8f-0263-41d4-a1ce-7d2d254c4aec" />

---

## 🚀 Chapter 3: The Strategic Pitch

### ❌ The Problems

- Traffic ↑ but **low intent users**
- Social Ads → **wasting budget**
- Apparel → **low conversion despite high exposure**
- Slow shipping → **cart abandonment**

---

## 💡 The Solution: 15% Revenue Recovery Plan

<img width="955" height="534" alt="image" src="https://github.com/user-attachments/assets/c2d74974-0cb5-4684-9753-5d061c075bf5" />

### 1️⃣ Cut the Fat
- Reduce Social Ads spend by **40%**
- Stop targeting low-performing segments

---

### 2️⃣ Feed the Engine
- Reallocate budget to:
  - Email Marketing
  - Retargeting
  - High-intent Search

---

### 3️⃣ Fix the Funnel
- Focus Social Ads on **Skincare (high converting)**
- Move Apparel to **email/lookbook strategy**

---

### 4️⃣ Optimize Logistics
- Reduce delivery time in North region
- Target: from **10 days → 5 days**

---

### 5️⃣ Increase Customer Value
- Product Bundles (Skincare + Accessories)
- Loyalty campaigns for repeat users

---

## 📈 Expected Impact

- +15% Revenue Growth  
- Higher Conversion Rate  
- Lower CAC  
- Improved ROAS  
- Increased Customer Lifetime Value  

---

## 🛠️ Tools & Technologies

- **SQL (MySQL)** → Data extraction & KPI calculation  
- **Python (Pandas)** → Data generation & preprocessing  
- **Power BI** → Dashboard & visualization  
- **DAX** → KPI modeling  
- **Canva** → Executive presentation  

---

## 📂 Project Structure

```
📁 GlowUp-Pro-Analysis
│
├── 📊 dashboard.pbix
├── 📜 sql_queries.sql
├── 📁 data
│   └── glowup_dataset.csv
├── 📁 assets
│   ├── dashboard.png
│   └── glowup_logo.jpg
└── README.md
```

---

## 🧩 Key Skills Demonstrated

- KPI Design & Business Thinking  
- SQL for Real Business Problems  
- Data Storytelling  
- Funnel Analysis  
- Marketing & Revenue Optimization  
- Turning Data → Strategy  

---

## 🧠 Final Insight

> This project proves that **more data is not the answer**.  
> The real value comes from asking the right questions.

---

## 👤 Author

**Yassine Chaqiq**  
📧 chaqiqyassine@gmail.com  
🔗 Portfolio: https://github.com/Chaqiq9012  

---

## ⭐ If you found this project useful

Give it a ⭐ and feel free to connect!
