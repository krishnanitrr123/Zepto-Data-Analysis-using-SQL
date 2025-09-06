<h1>🛒 Zepto E-commerce SQL Data Analyst Portfolio Project</h1>
<p>
 This is a complete, real-world data analysis project based on an e-commerce inventory dataset scraped from Zepto — one of India’s fastest-growing quick-commerce startups. This project simulates real analyst workflows, from raw data exploration to business-focused data analysis. 
</p>
<h3>
 Project Overview
</h3>

<p>
 The goal is to simulate how actual data analysts in the e-commerce or retail industries work behind the scenes to use SQL to:

✅ Set up a messy, real-world e-commerce inventory database

✅ Perform Exploratory Data Analysis (EDA) to explore product categories, availability, and pricing inconsistencies

✅ Implement Data Cleaning to handle null values, remove invalid entries, and convert pricing from paise to rupees

✅ Write business-driven SQL queries to derive insights around pricing, inventory, stock availability, revenue and more 
</p>

<h3>
  📁 Dataset Overview
</h3>
<ul>
  <li><strong>name</strong>: Product name as it appears on the app</li>
  <li><strong>category</strong>: Product category (e.g., Fruits, Snacks, Beverages)</li>
  <li><strong>mrp</strong>: Maximum Retail Price (originally in paise, converted to &#8377;)</li>
  <li><strong>discountPercent</strong>: Discount applied on MRP (%)</li>
  <li><strong>discountedSellingPrice</strong>: Final price after discount (converted to &#8377;)</li>
  <li><strong>availableQuantity</strong>: Units available in inventory</li>
  <li><strong>weightInGms</strong>: Product weight in grams</li>
  <li><strong>outOfStock</strong>: Boolean flag indicating stock availability (true/false)</li>
  <li><strong>quantity</strong>: Number of units per package (mixed with grams for loose produce)</li>
</ul>
<h3>🔧 Project Workflow</h3>
<h4>1. Data Import</h4>
<p>Loaded csv file using MySQL Workbench</p>
<h4>2.🔍 Data Exploration</h4>
<p>
<li> Counted the total number of records in the dataset</li>
<li>Viewed a sample of the dataset to understand structure and content</li>
<li>Checked for null values across all columns</li>
<li>Identified distinct product categories available in the dataset</li>
<li>Compared in-stock vs out-of-stock product counts</li>
<li>Detected products present multiple times, representing different id</li>
</p>
<h4>3. 🧹 Data Cleaning</h4>
<p>
  <li>Identified and removed rows where MRP or discounted selling price was zero </li>
  <li> Converted mrp and discountedSellingPrice from paise to rupees for consistency and readability</li>
</p>
<h4>4.📊 Business Insights</h4>
<p>
  <li>Find out the maximum discount% in every category.</li>
  <li>Find out the most selling product. </li>
  <li> Identified high-MRP products that are currently out of stock.</li>
  <li>Estimated potential revenue for each product category. </li>
  <li>Filtered expensive products (MRP > ₹500) with minimal discount.

 </li>
  <li> Ranked top 5 categories offering highest average discounts.</li>
  <li>Calculated price per gram to identify value-for-money products. </li>
  <li>Grouped products based on weight into Low, Medium, and Bulk categories. </li>
  <li>Measured total inventory weight per product category. </li>
  
</p>
