# SparkDeltaPro

Run pyspark with [delta](https://delta.io/) support. Just like the pros.

```
> poetry env use 3.11
> poetry install
> ./sdpro.sh
>>> spark.sql("create or replace table foo (name string) using delta")
>>> spark.sql("insert into foo(name) values ('Tushar'), ('Shona')")
>>> spark.sql("select * from foo").show()
+------+
|  name|
+------+
|Tushar|
| Shona|
+------+
```
