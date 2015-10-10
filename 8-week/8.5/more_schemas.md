Release 2:

-Why is there a one-to-one relationship between George Wambold and highest_priority_challenge? 

Because there will only ever be one highest_priority_challenge value for every one student. Either that or highest_priority_challenge will be a null value.

![one-to-one](/imgs/one_to_one.png)


Release 4:

![one-to-many](/imgs/one_to_many.png)


	---REFLECTION---

-What is a one-to-one database?

It's when two databases have a relationship in which for a value in database-one it will only ever have one corresponding value in database-two.


-When would you use a one-to-one database? (Think generally, not in terms of the example you created).

I can imagine using them for special cases, for values you don't think you'll be referencing often. That way you can have them out of the way during ussual operations, but easy to locate and evaluate during a special case.


-What is a many-to-many database?

A many-to-many database is a database in which one value in said database could have many corresponding values in another database. For example a library database, it's books value would have thousands of corresponding tables or databases for each book in the stacks. 


-When would you use a many-to-many database? (Think generally, not in terms of the example you created).

I just gave a nice example, but here's another one. A pop artist would have a 'hit-singles' value under their database, and that one value 'hit-singles' could be linked to many songs.


-What is confusing about database schemas? What makes sense?

It seems pretty simple in theory, but I can imagine databases getting extremely complicated and difficult to navigate. 




