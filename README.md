# 🍔 Swiggy SQL Data Analysis

## 📌 Project Overview

This project analyzes **Swiggy restaurant data using SQL** to extract meaningful insights about restaurants, cities, cuisines, ratings, restaurant chains, and average costs.

The project focuses on writing SQL queries to answer practical business and data-analysis questions using aggregation, filtering, grouping, sorting, and limiting techniques.

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze the number of restaurants listed across cities
* Identify the most popular cuisines
* Find restaurant chains with the highest number of branches
* Analyze average restaurant ratings by city
* Compare average restaurant costs across cities
* Identify cuisines with the highest average ratings
* Find highly rated restaurants with a significant number of ratings

---

## 🛠️ Tools & Technologies

* **SQL**
* **MySQL** / SQL-compatible database
* **GitHub** for project version control

### SQL Concepts Used

* `SELECT`
* `WHERE`
* `COUNT()`
* `AVG()`
* `ROUND()`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`

---

## 📊 Analysis Performed

### 1. Restaurants Listed per City

Identifies the cities with the highest number of restaurants listed on Swiggy.

```sql
SELECT city, COUNT(*) AS name_count
FROM swiggy
GROUP BY city
ORDER BY name_count DESC
LIMIT 10;
```

---

### 2. Most Popular Cuisines Across India

Identifies the most frequently listed cuisines in the dataset.

```sql
SELECT cuisine, COUNT(*) AS popular_cuisine
FROM swiggy
GROUP BY cuisine
ORDER BY popular_cuisine DESC
LIMIT 10;
```

---

### 3. Restaurant Chains with the Most Branches

Finds restaurant names that have the highest number of branches in the dataset.

```sql
SELECT name, COUNT(*) AS most_branches
FROM swiggy
GROUP BY name
ORDER BY most_branches DESC
LIMIT 10;
```

---

### 4. Top 5 Cities by Average Restaurant Rating

Calculates the average restaurant rating for each city and identifies the top five cities.

Restaurants with a rating of `"--"` are excluded from the calculation.

```sql
SELECT city,
       ROUND(AVG(rating), 2) AS avg_rating,
       COUNT(*) AS total_restaurants
FROM swiggy
WHERE rating != "--"
GROUP BY city
ORDER BY avg_rating DESC
LIMIT 5;
```

---

### 5. Average Cost for Two Across Cities

Calculates and compares the average cost for two across different cities.

```sql
SELECT city,
       ROUND(AVG(cost), 2) AS avg_cost
FROM swiggy
WHERE rating != "--"
GROUP BY city
ORDER BY avg_cost DESC
LIMIT 10;
```

---

### 6. Cuisines with the Highest Average Rating

Identifies cuisines with the highest average restaurant ratings while considering cuisines with more than 100 restaurants.

```sql
SELECT cuisine,
       ROUND(AVG(rating), 2) AS avg_rating,
       COUNT(*) AS total_restaurant
FROM swiggy
WHERE rating != "--"
GROUP BY cuisine
HAVING total_restaurant > 100
ORDER BY avg_rating DESC
LIMIT 10;
```

---

### 7. Highly Rated Restaurants

Finds restaurants with a rating above `4.5` and more than `20` ratings.

```sql
SELECT name,
       city,
       rating,
       cuisine,
       rating_count
FROM swiggy
WHERE rating > 4.5
  AND rating_count > 20
ORDER BY rating DESC
LIMIT 20;
```

---

## 📁 Project Structure

```text
swiggy-sql-analysis/
│
├── swiggy.sql
└── README.md
```

---

## 🔍 Key SQL Skills Demonstrated

This project demonstrates practical use of SQL for data analysis, including:

* **Aggregation** using `COUNT()` and `AVG()`
* **Data filtering** using `WHERE`
* **Grouping data** using `GROUP BY`
* **Filtering aggregated results** using `HAVING`
* **Sorting results** using `ORDER BY`
* **Limiting results** using `LIMIT`
* **Handling unavailable ratings** represented by `"--"`
* **Rounding numerical results** using `ROUND()`

---

## 💡 Business Questions Answered

The analysis uses SQL to answer questions such as:

> Which cities have the most restaurants?

> Which cuisines are most commonly represented?

> Which restaurant names have the most branches?

> Which cities have the highest average restaurant ratings?

> Which cities have the highest average cost for two?

> Which cuisines have the highest average ratings among cuisines with more than 100 restaurants?

> Which restaurants have ratings above 4.5 with more than 20 ratings?

---

## 🚀 How to Use This Project

1. Clone or download this repository.
2. Import the Swiggy dataset into your SQL database.
3. Create or use the `swiggy` table.
4. Open `swiggy.sql`.
5. Execute the queries individually to reproduce the analysis.

---

## 📌 Note

This repository contains SQL queries for exploratory analysis of the Swiggy restaurant dataset. The analysis and conclusions are based on the data available in the dataset.

---

## 👨‍💻 Author

**Your Name**

If you found this project useful, feel free to ⭐ the repository.
