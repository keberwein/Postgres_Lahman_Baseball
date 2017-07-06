# Postgres_Lahman_Baseball
A PostgreSQL table schema for the 2015 Lahman Baseball Database

This schema will work for importing the `csv` version of Sean Lahman's baseball database to PostgreSQL. Sean makes slight changes to the database each year. I'll do my best to keep this current.

Create tables with the attached SQL file and import the `.csv` files with the code below or by the "import" function in PgAdmin.

[Download](https://github.com/chadwickbureau/baseballdatabank) the latest `.csv` files.


## Load Data
The following loop requires `psql` installed on Linux/OSx or Cygwin running on Windows. If you don't have Cygwin, see the long-form below.

```sql
for x in $(ls /path/to/files/file_name*.csv); 
do psql -c "COPY table_name FROM '$x' CSV HEADER" db_name; done

```


```sql
COPY allstarfull FROM '/path/to/AllstarFull.csv' DELIMITER ',' CSV HEADER;
COPY appearances FROM '/path/to/Appearances.csv' DELIMITER ',' CSV HEADER;
COPY awardsmanagers FROM '/path/to/AwardsManagers.csv' DELIMITER ',' CSV HEADER;
COPY awardsplayers FROM '/path/to/AwardsPlayers.csv' DELIMITER ',' CSV HEADER;
COPY awardssharemanagers FROM '/path/to/AwardsShareManagers.csv' DELIMITER ',' CSV HEADER;
COPY awardsshareplayers FROM '/path/to/AwardsSharePlayers.csv' DELIMITER ',' CSV HEADER;
COPY batting FROM '/path/to/Batting.csv' DELIMITER ',' CSV HEADER;
COPY battingpost FROM '/path/to/BattingPost.csv' DELIMITER ',' CSV HEADER;
COPY collegeplaying FROM '/path/to/CollegePlaying.csv' DELIMITER ',' CSV HEADER;
COPY fielding FROM '/path/to/Fielding.csv' DELIMITER ',' CSV HEADER;
COPY fieldingof FROM '/path/to/FieldingOF.csv' DELIMITER ',' CSV HEADER;
COPY fieldingpost FROM '/path/to/FieldingPost.csv' DELIMITER ',' CSV HEADER;
COPY halloffame FROM '/path/to/HallOfFame.csv' DELIMITER ',' CSV HEADER;
COPY homegames FROM '/path/to/HomeGames.csv' DELIMITER ',' CSV HEADER;
COPY managers FROM '/path/to/Managers.csv' DELIMITER ',' CSV HEADER;
COPY managershalf FROM '/path/to/ManagersHalf.csv' DELIMITER ',' CSV HEADER;
COPY master FROM '/path/to/Master.csv' DELIMITER ',' CSV HEADER;
COPY parks FROM '/path/to/Parks.csv' DELIMITER ',' CSV HEADER;
COPY pitching FROM '/path/to/Pitching.csv' DELIMITER ',' CSV HEADER;
COPY pitchingpost FROM '/path/to/PitchingPost.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM '/path/to/Salaries.csv' DELIMITER ',' CSV HEADER;
COPY schools FROM '/path/to/Schools.csv' DELIMITER ',' CSV HEADER;
COPY seriespost FROM '/path/to/SeriesPost.csv' DELIMITER ',' CSV HEADER;
COPY teams FROM '/path/to/Teams.csv' DELIMITER ',' CSV HEADER;
COPY teamsfranchises FROM '/path/to/TeamsFranchises.csv' DELIMITER ',' CSV HEADER;
COPY teamshalf FROM '/path/to/TeamsHalf.csv' DELIMITER ',' CSV HEADER;
```
