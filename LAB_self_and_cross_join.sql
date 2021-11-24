-- LAB SQL Self and cross join

-- 1.Get all pairs of actors that worked together.
select a.film_id, a.actor_id,b.actor_id from film_actor as a
join film_actor as b on a.film_id = b.film_id
and a.actor_id < b.actor_id
order by a.film_id, a.actor_id;

-- 2.Get all pairs of customers that have rented the same film more than 3 times.
select d.customer_id,a.customer_id, count(b.film_id) from rental a
join inventory b on a.inventory_id = b.inventory_id
join film c on b.film_id = c.film_id
join rental d on a.customer_id < d.customer_id
where b.film_id > 3
group by d.customer_id, b.film_id;


-- 3.Get all possible pairs of actors and films.
select a.film_id, a.actor_id,b.actor_id,b.film_id from film_actor a
join film_actor b on a.actor_id < b.actor_id
and a.film_id < b.film_id
order by a.film_id, a.actor_id;

