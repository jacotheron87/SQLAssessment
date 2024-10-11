### Hi Donovan

Here is the SQL Assessment Project

I am assuming you have docker installed on your local...
I have created scripts to create the tables and add dummy data
- init.sql
- seed.sql

You can pull this project and from the root folder 
run:

```bash
docker-compose up --build
```

If there are any issues, 
and you would like to restart
please drop the volume to make sure data is created 
by running:

```bash
docker-compose down -v
```

you can check that there are no mysql volumes referenced 
by running:
```bash
docker volume ls
```

## Question 1
I am very sure there is a much better way to answer `Question 1`
but tried to stick to not using all the resources
available

Please see the file **top_customers.sql** in the root folder.
I also added a comment or 2.

## Question 2 
As mentioned in slack, 
even before there are performance issues,
in the case of a join on a table that is expected to grow,
I would research best practices for performance.

Other than that I would look at optimising calculations maybe performed on every row,
potentially look at using a different type of join to reduce rows,
or possibly running an `EXPLAIN` on the query
