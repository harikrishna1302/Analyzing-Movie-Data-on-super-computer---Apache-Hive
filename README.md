# Large-Movie-Database---Apache-Hive
##Introduction:
The data is nothing but the information and the database defines the data that is stored and processed at user’s requirement. Big data deals with the large amount of data and is most widely used in now days. There are many languages used to access and store the data from or to the database and MYSQL is the mostly used query language to store the data in database. The developer should be most perfect with any of the database language for learning the database practically. The interesting part of the database is you can access the data as per your requirements using the query language and can store in to the database from your local file system. 
Any database contains two things which are meta data and warehouse.
##Meta data: 
The schema of the input data is called meta data and the schema is used for the rational purpose in dealing with the attributes and entities.
##Warehouse: 
It is nothing the place where your actual data is stored and for Apache hive, HDFS is the warehouse.
##Hadoop:
It is an open source, java based programming language for storing and processing of large data sets. The two most important things that Hadoop defines are storage system and processing system. The storage system is used to store large data on Hadoop Distributed cluster(HDFS). Cluster is nothing but connection of multiple computers and it is used because more RAM should be allocated for storing large amounts of data. The processing system access the data stored in the HDFS and process based on given input operations. Apache Hive is one of the component that runs on HDFS cluster.
##Apache Hive:
As mentioned before, Apache Hive runs on HDFS cluster and contains database called Derby Database. This database contains meta data and warehouse like other databases. In Apache, the warehouse is HDFS because the data is stored from local file system to HDFS and the Apache Hive process the data that is stored in HDFS but not based on the local file system. Since the data is stored in HDFS cluster, Apache Hive doesn’t perform INSERT, DELETE, UPDATE operations.  The language used is Hive Query language and it is written using the shell “hive >”
##Entity- Relation Model of given data set:
This model is also called as ER model which contains information of the data in structured format.
Every property that is used in database has some structure format which is easy for the developer to understand. This model contains entities, Relationships, etc. that is connected to one another. In this project, the ER model representation is shown below:
![untitled](https://cloud.githubusercontent.com/assets/18632383/23093182/fe2fc638-f5a9-11e6-9d07-42dabf9416ff.png)
