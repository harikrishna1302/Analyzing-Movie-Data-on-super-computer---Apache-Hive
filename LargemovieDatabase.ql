create database chagalamarrihwk5db;
use chagalamarrihwk5db;
create table movies( movieid int, title string, genres string)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde';
load data inpath '/tmp/movies/movies.dat' overwrite into table movies;
create table ageclass(agecode int, agerange string)
row format delimited fields terminated by ',';
load data inpath '/tmp/movies/ageclass.dat'overwrite into table ageclass;
create table occupation( jobcode int, jobtitle string)
row format delimited fields terminated by ',';
load data inpath '/tmp/movies/occupation.dat' overwrite into table occupation;
create table users( userid int, gender string, agecode int, jobcode int, zipcode string)
row format delimited fields terminated by ',';
load data inpath '/tmp/movies/users.dat' overwrite into table users;
create table ratings( userid int, movieid int, rating float, time string)
row format delimited fields terminated by ',';
load data inpath '/tmp/movies/ratings.dat' overwrite into table ratings;
create table tags( userid int, movieid int, tag string, time string)
row format delimited fields terminated by ',';
load data inpath '/tmp/movies/tags.dat' overwrite into table tags;

          --  -------------------------------------------------------------------    
          --     Query for number of males and females given a highest rating
          --  -------------------------------------------------------------------

select ratings.rating, users.gender, count(distinct users.userid) from ratings 
inner join users on users.userid=ratings.userid where rating=5.0 group by users.gender, ratings.rating;

          --  --------------------------------------------------------------------
          --                  Query for 12th point in part-I
          --  --------------------------------------------------------------------
select ratings.rating, occupation.jobtitle, count(distinct users.userid) from ratings 
inner join users on ratings.userid=users.userid 
inner join occupation on occupation.jobcode=users.jobcode 
inner join movies on movies.movieid=ratings.movieid
where rating=5.0 and movies.genres like '%Romance%' group by  ratings.rating, occupation.jobtitle; 