# Postgres_Lahman_Baseball
A PostgreSQL table schema for the 2014 Lahman Baseball Database

This schema will work for importing the csv version on Sean Lahman's baseball database to Postgres. This works wiht the 2014 version. Sean makes slight changes to the database each year. I'll do my best to keep this current.

Create tables witht the attached SQL file and import the csv with the code below or by the "import" function in PgAdmin.

ownload the latest CSV and import.

```sql
COPY AllstarFull FROM '/path/to/AllstarFull.csv' DELIMITER ',' CSV HEADER;
COPY Appearances FROM '/path/to/Appearances.csv' DELIMITER ',' CSV HEADER;
COPY AwardsManagers FROM '/path/to/AwardsManagers.csv' DELIMITER ',' CSV HEADER;
COPY AwardsPlayers FROM '/path/to/AwardsPlayers.csv' DELIMITER ',' CSV HEADER;
COPY AwardsShareManagers FROM '/path/to/AwardsShareManagers.csv' DELIMITER ',' CSV HEADER;
COPY AwardsSharePlayers FROM '/path/to/AwardsSharePlayers.csv' DELIMITER ',' CSV HEADER;
COPY Batting FROM '/path/to/Batting.csv' DELIMITER ',' CSV HEADER;
COPY BattingPost FROM '/path/to/BattingPost.csv' DELIMITER ',' CSV HEADER;
COPY CollegePlaying FROM '/path/to/CollegePlaying.csv' DELIMITER ',' CSV HEADER;
COPY Fielding FROM '/path/to/Fielding.csv' DELIMITER ',' CSV HEADER;
COPY FieldingOF FROM '/path/to/FieldingOF.csv' DELIMITER ',' CSV HEADER;
COPY FieldingPost FROM '/path/to/FieldingPost.csv' DELIMITER ',' CSV HEADER;
COPY HallOfFame FROM '/path/to/HallOfFame.csv' DELIMITER ',' CSV HEADER;
COPY Managers FROM '/path/to/Managers.csv' DELIMITER ',' CSV HEADER;
COPY ManagersHalf FROM '/path/to/ManagersHalf.csv' DELIMITER ',' CSV HEADER;
COPY Master FROM '/path/to/Master.csv' DELIMITER ',' CSV HEADER;
COPY Pitching FROM '/path/to/Pitching.csv' DELIMITER ',' CSV HEADER;
COPY PitchingPost FROM '/path/to/PitchingPost.csv' DELIMITER ',' CSV HEADER;
COPY Salaries FROM '/path/to/Salaries.csv' DELIMITER ',' CSV HEADER;
COPY Schools FROM '/path/to/Schools.csv' DELIMITER ',' CSV HEADER;
COPY SeriesPost FROM '/path/to/SeriesPost.csv' DELIMITER ',' CSV HEADER;
COPY Teams FROM '/path/to/Teams.csv' DELIMITER ',' CSV HEADER;
COPY TeamsFranchises FROM '/path/to/TeamsFranchises.csv' DELIMITER ',' CSV HEADER;
COPY TeamsHalf FROM '/path/to/TeamsHalf.csv' DELIMITER ',' CSV HEADER;
```
