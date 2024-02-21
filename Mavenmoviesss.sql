use mavenmovies;
show tables;


SELECT f.title
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE NOT f.title LIKE 'A%'
GROUP BY f.title
HAVING COUNT(r.rental_id) > 30
ORDER BY COUNT(r.rental_id) DESC;





SELECT SUM(p.amount) AS total_revenue
FROM payment p 
inner join staff s on s.staff_id = p.staff_id
inner join store st on s.store_id = st.store_id;


SELECT f.title
FROM film_category fc
JOIN film f ON fc.film_id = f.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Horror'
ORDER BY RIGHT(f.title, 1);



select c.first_name, c.last_name, c.customer_id, count(r.rental_id) as rental_count from customer c
left join rental r on r.customer_id= c.customer_id
where c.first_name like 'e%'
group by c.customer_id
order by c.customer_id limit 5;




SELECT fc.category_id, COUNT(f.film_id) AS film_count
FROM film_category fc
LEFT JOIN film f ON fc.film_id = f.film_id
GROUP BY fc.category_id
ORDER BY film_count DESC;







