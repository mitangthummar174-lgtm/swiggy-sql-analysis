select * from swiggy 
where rating!="--";

-- 1. How many restaurants are listed per city?
select city,count(*) as name_count from swiggy
group by city
order by name_count DESC
limit 10 ;

-- 2. What are the most popular cuisines across India?
select cuisine,count(*) as popular_cuisine from swiggy 
group by cuisine
order by popular_cuisine desc
limit 10;


-- 3. Which restaurant chains have the most branches?
select name,count(*) as most_branches from swiggy 
group by name 
order by most_branches desc
limit 10;

-- 4. Top 5 cities with highest average restaurant rating?
select city,round(avg(rating),2) as avg_rating,count(*) as total_restaurants from swiggy 
where rating!="--"
group by city
order by avg_rating desc
limit 5;

-- 5. What is the average cost for two across cities?
select city,round(avg(cost),2) as avg_cost from swiggy
where rating!="--"
group by city
order by avg_cost desc
limit 10;

-- 6. Which cuisines have the highest average rating?
select cuisine,round(avg(rating),2) as avg_rating,count(*) as total_restaurant from swiggy
where rating!="--"
group by cuisine
having total_restaurant>100
order by avg_rating desc 
limit 10;

-- 7. Restaurants with rating above 4.5 and more than 1000 ratings
select name,city,rating,cuisine,rating_count from swiggy
where rating>4.5 and rating_count>20
order by rating desc
limit 20;



