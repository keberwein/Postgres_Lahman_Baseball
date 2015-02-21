# Postgres_Lahman_Baseball
A PostgreSQL table schema for the 2014 Lahman Baseball Database

This schema will work for importing the csv version on Sean Lahman's baseball database to Postgres. This works wiht the 2014 version. Sean makes slight changes to the database each year. I'll do my best to keep this current.

Create tables witht the attached SQL file and import the csv with the code below or by the "import" function in PgAdmin.

ownload the latest CSV and import.

```sql
COPY AllstarFull FROM '/path/to/AllstarFull.csv' DELIMITER ',' CSV;
COPY Appearances FROM '/path/to/Appearances.csv' DELIMITER ',' CSV;
COPY AwardsManagers FROM '/path/to/AwardsManagers.csv' DELIMITER ',' CSV;
COPY AwardsPlayers FROM '/path/to/AwardsPlayers.csv' DELIMITER ',' CSV;
COPY AwardsShareManagers FROM '/path/to/AwardsShareManagers.csv' DELIMITER ',' CSV;
COPY AwardsSharePlayers FROM '/path/to/AwardsSharePlayers.csv' DELIMITER ',' CSV;
COPY Batting FROM '/path/to/Batting.csv' DELIMITER ',' CSV;
COPY BattingPost FROM '/path/to/BattingPost.csv' DELIMITER ',' CSV;
COPY Fielding FROM '/path/to/Fielding.csv' DELIMITER ',' CSV;
COPY FieldingOF FROM '/path/to/FieldingOF.csv' DELIMITER ',' CSV;
COPY FieldingPost FROM '/path/to/FieldingPost.csv' DELIMITER ',' CSV;
COPY HallOfFame FROM '/path/to/HallOfFame.csv' DELIMITER ',' CSV;
COPY Managers FROM '/path/to/Managers.csv' DELIMITER ',' CSV;
COPY ManagersHalf FROM '/path/to/ManagersHalf.csv' DELIMITER ',' CSV;
COPY Master FROM '/path/to/Master.csv' DELIMITER ',' CSV;
COPY Pitching FROM '/path/to/Pitching.csv' DELIMITER ',' CSV;
COPY PitchingPost FROM '/path/to/PitchingPost.csv' DELIMITER ',' CSV;
COPY Salaries FROM '/path/to/Salaries.csv' DELIMITER ',' CSV;
COPY Schools FROM '/path/to/Schools.csv' DELIMITER ',' CSV;
COPY SchoolsPlayers FROM '/path/to/SchoolsPlayers.csv' DELIMITER ',' CSV;
COPY SeriesPost FROM '/path/to/SeriesPost.csv' DELIMITER ',' CSV;
COPY Teams FROM '/path/to/Teams.csv' DELIMITER ',' CSV;
COPY TeamsFranchises FROM '/path/to/TeamsFranchises.csv' DELIMITER ',' CSV;
COPY TeamsHalf FROM '/path/to/TeamsHalf.csv' DELIMITER ',' CSV;
```
