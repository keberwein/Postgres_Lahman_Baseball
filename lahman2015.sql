BEGIN TRANSACTION;
-- 
-- Database: lahman_bbdb
-- Updated: 2016-03-07
-- --------------------------------------------------------
-- 
-- Table structure for table AllstarFull
-- 
DROP TABLE IF EXISTS allstarfull;
CREATE TABLE IF NOT EXISTS allstarfull (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
gamenum int NOT NULL,
gameid varchar(12) DEFAULT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
gp int DEFAULT NULL,
startingpos int DEFAULT NULL,
PRIMARY KEY (playerid,yearid,gamenum)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Appearances
-- 
-- 
DROP TABLE IF EXISTS appearances;
CREATE TABLE IF NOT EXISTS appearances (
yearid int NOT NULL,
teamid varchar(3) NOT NULL,
lgid varchar(2) DEFAULT NULL,
playerid varchar(10) NOT NULL,
g_all int DEFAULT NULL,
gs int DEFAULT NULL,
g_batting int DEFAULT NULL,
g_defense int DEFAULT NULL,
g_p int DEFAULT NULL,
g_c int DEFAULT NULL,
g_1b int DEFAULT NULL,
g_2b int DEFAULT NULL,
g_3b int DEFAULT NULL,
g_ss int DEFAULT NULL,
g_lf int DEFAULT NULL,
g_cf int DEFAULT NULL,
g_rf int DEFAULT NULL,
g_of int DEFAULT NULL,
g_dh int DEFAULT NULL,
g_ph int DEFAULT NULL,
g_pr int DEFAULT NULL,
PRIMARY KEY (yearid,teamid,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table AwardsManagers
-- 
-- 
DROP TABLE IF EXISTS awardsmanagers;
CREATE TABLE IF NOT EXISTS awardsmanagers (
playerid varchar(10) NOT NULL,
awardid varchar(25) NOT NULL,
yearid int NOT NULL,
lgid varchar(2) NOT NULL,
tie varchar(1) DEFAULT NULL,
notes varchar(100) DEFAULT NULL,
PRIMARY KEY (yearid,awardid,lgid,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table AwardsPlayers
-- 
-- 
DROP TABLE IF EXISTS awardsplayers;
CREATE TABLE IF NOT EXISTS awardsplayers (
playerid varchar(10) NOT NULL,
awardid varchar(255) NOT NULL,
yearid int NOT NULL,
lgid varchar(2) NOT NULL,
tie varchar(1) DEFAULT NULL,
notes varchar(100) DEFAULT NULL,
PRIMARY KEY (yearid,awardid,lgid,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table AwardsShareManagers
-- 
-- 
DROP TABLE IF EXISTS awardssharemanagers;
CREATE TABLE IF NOT EXISTS awardssharemanagers (
awardid varchar(25) NOT NULL,
yearid int NOT NULL,
lgid varchar(2) NOT NULL,
playerid varchar(10) NOT NULL,
pointswon int DEFAULT NULL,
pointsmax int DEFAULT NULL,
votesfirst int DEFAULT NULL,
PRIMARY KEY (awardid,yearid,lgid,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table AwardsSharePlayers
-- 
-- 
DROP TABLE IF EXISTS awardsshareplayers;
CREATE TABLE IF NOT EXISTS awardsshareplayers (
awardid varchar(25) NOT NULL,
yearid int NOT NULL,
lgid varchar(2) NOT NULL,
playerid varchar(10) NOT NULL,
pointswon double precision DEFAULT NULL,
pointsmax int DEFAULT NULL,
votesfirst double precision DEFAULT NULL,
PRIMARY KEY (awardid,yearid,lgid,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Batting
-- 
-- 
DROP TABLE IF EXISTS batting;
CREATE TABLE IF NOT EXISTS batting (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
stint int NOT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
g int DEFAULT NULL,
ab int DEFAULT NULL,
r int DEFAULT NULL,
h int DEFAULT NULL,
h2b int DEFAULT NULL,
h3b int DEFAULT NULL,
hr int DEFAULT NULL,
rbi int DEFAULT NULL,
sb int DEFAULT NULL,
cs int DEFAULT NULL,
bb int DEFAULT NULL,
so int DEFAULT NULL,
ibb int DEFAULT NULL,
hbp int DEFAULT NULL,
sh int DEFAULT NULL,
sf int DEFAULT NULL,
gidp int DEFAULT NULL,
PRIMARY KEY (playerid,yearid,stint)
);
-- --------------------------------------------------------
-- 
-- Table structure for table BattingPost
-- 
-- 
DROP TABLE IF EXISTS battingpost;
CREATE TABLE IF NOT EXISTS battingpost (
yearid int NOT NULL,
round varchar(10) NOT NULL,
playerid varchar(10) NOT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
g int DEFAULT NULL,
ab int DEFAULT NULL,
r int DEFAULT NULL,
h int DEFAULT NULL,
h2b int DEFAULT NULL,
h3b int DEFAULT NULL,
hr int DEFAULT NULL,
rbi int DEFAULT NULL,
sb int DEFAULT NULL,
cs int DEFAULT NULL,
bb int DEFAULT NULL,
so int DEFAULT NULL,
ibb int DEFAULT NULL,
hbp int DEFAULT NULL,
sh int DEFAULT NULL,
sf int DEFAULT NULL,
gidp int DEFAULT NULL,
PRIMARY KEY (yearid,round,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table CollegePlaying
-- 
-- 
DROP TABLE IF EXISTS collegeplaying;
CREATE TABLE IF NOT EXISTS collegeplaying (
playerid varchar(10) NOT NULL,
schoolid varchar(15) NOT NULL,
yearid int NOT NULL,
PRIMARY KEY (playerid, schoolid, yearid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Fielding
-- 
-- 
DROP TABLE IF EXISTS fielding;
CREATE TABLE IF NOT EXISTS fielding (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
stint int NOT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
pos varchar(2) NOT NULL,
g int DEFAULT NULL,
gs int DEFAULT NULL,
innouts int DEFAULT NULL,
po int DEFAULT NULL,
a int DEFAULT NULL,
e int DEFAULT NULL,
dp int DEFAULT NULL,
pb int DEFAULT NULL,
wp int DEFAULT NULL,
sb int DEFAULT NULL,
cs int DEFAULT NULL,
zr double precision DEFAULT NULL,
PRIMARY KEY (playerid,yearid,stint,pos)
);
-- --------------------------------------------------------
-- 
-- Table structure for table FieldingOF
-- 
-- 
DROP TABLE IF EXISTS fieldingof;
CREATE TABLE IF NOT EXISTS fieldingof (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
stint int NOT NULL,
glf int DEFAULT NULL,
gcf int DEFAULT NULL,
grf int DEFAULT NULL,
PRIMARY KEY (playerid,yearid,stint)
);
-- --------------------------------------------------------
-- 
-- Table structure for table FieldingPost
-- 
-- 
DROP TABLE IF EXISTS fieldingpost;
CREATE TABLE IF NOT EXISTS fieldingpost (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
round varchar(10) NOT NULL,
pos varchar(2) NOT NULL,
g int DEFAULT NULL,
gs int DEFAULT NULL,
innouts int DEFAULT NULL,
po int DEFAULT NULL,
a int DEFAULT NULL,
e int DEFAULT NULL,
dp int DEFAULT NULL,
tp int DEFAULT NULL,
pb int DEFAULT NULL,
sb int DEFAULT NULL,
cs int DEFAULT NULL,
PRIMARY KEY (playerid,yearid,round,pos)
);
-- --------------------------------------------------------
-- 
-- Table structure for table HallOfFame
-- 
-- 
DROP TABLE IF EXISTS halloffame;
CREATE TABLE IF NOT EXISTS halloffame (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
votedby varchar(64) NOT NULL DEFAULT '',
ballots int DEFAULT NULL,
needed int DEFAULT NULL,
votes int DEFAULT NULL,
inducted varchar(1) DEFAULT NULL,
category varchar(20) DEFAULT NULL,
needed_note varchar(20) DEFAULT NULL,
PRIMARY KEY (playerid,yearid,votedby)
);
-- --------------------------------------------------------
-- 
-- --------------------------------------------------------
-- 
-- Table structure for table homegames
-- 
-- 
DROP TABLE IF EXISTS homegames;
CREATE TABLE IF NOT EXISTS homegames (
year int NOT NULL,
league varchar(64) NULL DEFAULT '',
team varchar(10) DEFAULT NULL,
park varchar(10) DEFAULT NULL,
span_first date DEFAULT NULL,
span_last date DEFAULT NULL,
games int DEFAULT NULL,
openings int DEFAULT NULL,
attendance int DEFAULT NULL,
PRIMARY KEY (year,team,league,park)
);
-- --------------------------------------------------------
--
-- Table structure for table Managers
-- 
-- 
DROP TABLE IF EXISTS managers;
CREATE TABLE IF NOT EXISTS managers (
playerid varchar(10) DEFAULT NULL,
yearid int NOT NULL,
teamid varchar(3) NOT NULL,
lgid varchar(2) DEFAULT NULL,
inseason int NOT NULL,
g int DEFAULT NULL,
w int DEFAULT NULL,
l int DEFAULT NULL,
rank int DEFAULT NULL,
plyrmgr varchar(1) DEFAULT NULL,
PRIMARY KEY (yearid,teamid,inseason)
);
-- --------------------------------------------------------
-- 
-- Table structure for table ManagersHalf
-- 
-- 
DROP TABLE IF EXISTS managershalf;
CREATE TABLE IF NOT EXISTS managershalf (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
teamid varchar(3) NOT NULL,
lgid varchar(2) DEFAULT NULL,
inseason int DEFAULT NULL,
half int NOT NULL,
g int DEFAULT NULL,
w int DEFAULT NULL,
l int DEFAULT NULL,
rank int DEFAULT NULL,
PRIMARY KEY (yearid,teamid,playerid,half)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Master
-- 
-- 
DROP TABLE IF EXISTS master;
CREATE TABLE IF NOT EXISTS master (
playerid varchar(10) DEFAULT NULL,
birthyear int DEFAULT NULL,
birthmonth int DEFAULT NULL,
birthday int DEFAULT NULL,
birthcountry varchar(50) DEFAULT NULL,
birthstate varchar(50) DEFAULT NULL,
birthcity varchar(50) DEFAULT NULL,
deathyear int DEFAULT NULL,
deathmonth int DEFAULT NULL,
deathday int DEFAULT NULL,
deathcountry varchar(50) DEFAULT NULL,
deathstate varchar(50) DEFAULT NULL,
deathcity varchar(50) DEFAULT NULL,
namefirst varchar(50) DEFAULT NULL,
namelast varchar(50) DEFAULT NULL,
namegiven varchar(255) DEFAULT NULL,
weight int DEFAULT NULL,
height double precision DEFAULT NULL,
bats varchar(1) DEFAULT NULL,
throws varchar(1) DEFAULT NULL,
debut varchar(10) DEFAULT NULL,
finalgame varchar(10) DEFAULT NULL,
retroid varchar(9) DEFAULT NULL,
bbrefid varchar(9) DEFAULT NULL,
PRIMARY KEY (playerid)
);
-- --------------------------------------------------------
--  
-- Table structure for table parks
-- 
-- 
DROP TABLE IF EXISTS parks;
CREATE TABLE IF NOT EXISTS parks (
park varchar(50) NOT NULL,
park_name varchar(100) DEFAULT NULL,
park_alias varchar(100) DEFAULT NULL,
city varchar(50) DEFAULT NULL,
state varchar(50) DEFAULT NULL,
country varchar(50) DEFAULT NULL,
PRIMARY KEY (park)
);
-- --------------------------------------------------------
--
-- Table structure for table Pitching
-- 
-- 
DROP TABLE IF EXISTS pitching;
CREATE TABLE IF NOT EXISTS pitching (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
stint int NOT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
w int DEFAULT NULL,
l int DEFAULT NULL,
g int DEFAULT NULL,
gs int DEFAULT NULL,
cg int DEFAULT NULL,
sho int DEFAULT NULL,
sv int DEFAULT NULL,
ipouts int DEFAULT NULL,
h int DEFAULT NULL,
er int DEFAULT NULL,
hr int DEFAULT NULL,
bb int DEFAULT NULL,
so int DEFAULT NULL,
baopp double precision DEFAULT NULL,
era double precision DEFAULT NULL,
ibb int DEFAULT NULL,
wp int DEFAULT NULL,
hbp int DEFAULT NULL,
bk int DEFAULT NULL,
bfp int DEFAULT NULL,
gf int DEFAULT NULL,
r int DEFAULT NULL,
sh int DEFAULT NULL,
sf int DEFAULT NULL,
gidp int DEFAULT NULL,
PRIMARY KEY (playerid,yearid,stint)
);
-- --------------------------------------------------------
-- 
-- Table structure for table PitchingPost
-- 
-- 
DROP TABLE IF EXISTS pitchingpost;
CREATE TABLE IF NOT EXISTS pitchingpost (
playerid varchar(10) NOT NULL,
yearid int NOT NULL,
round varchar(10) NOT NULL,
teamid varchar(3) DEFAULT NULL,
lgid varchar(2) DEFAULT NULL,
w int DEFAULT NULL,
l int DEFAULT NULL,
g int DEFAULT NULL,
gs int DEFAULT NULL,
cg int DEFAULT NULL,
sho int DEFAULT NULL,
sv int DEFAULT NULL,
ipouts int DEFAULT NULL,
h int DEFAULT NULL,
er int DEFAULT NULL,
hr int DEFAULT NULL,
bb int DEFAULT NULL,
so int DEFAULT NULL,
baopp double precision DEFAULT NULL,
era double precision DEFAULT NULL,
ibb int DEFAULT NULL,
wp int DEFAULT NULL,
hbp int DEFAULT NULL,
bk int DEFAULT NULL,
bfp int DEFAULT NULL,
gf int DEFAULT NULL,
r int DEFAULT NULL,
sh int DEFAULT NULL,
sf int DEFAULT NULL,
gidp int DEFAULT NULL,
PRIMARY KEY (playerid,yearid,round)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Salaries
-- 
-- 
DROP TABLE IF EXISTS salaries;
CREATE TABLE IF NOT EXISTS salaries (
yearid int NOT NULL,
teamid varchar(3) NOT NULL,
lgid varchar(2) NOT NULL,
playerid varchar(10) NOT NULL,
salary double precision DEFAULT NULL,
PRIMARY KEY (yearid,teamid,lgid,playerid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Schools
-- 
-- 
DROP TABLE IF EXISTS schools;
CREATE TABLE IF NOT EXISTS schools (
schoolid varchar(15) NOT NULL,
schoolname varchar(255) DEFAULT NULL,
schoolcity varchar(55) DEFAULT NULL,
schoolstate varchar(55) DEFAULT NULL,
schoolnick varchar(55) DEFAULT NULL,
PRIMARY KEY (schoolid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table SeriesPost
-- 
-- 
DROP TABLE IF EXISTS SeriesPost;
CREATE TABLE IF NOT EXISTS SeriesPost (
yearID int NOT NULL,
round varchar(5) NOT NULL,
teamIDwinner varchar(3) DEFAULT NULL,
lgIDwinner varchar(2) DEFAULT NULL,
teamIDloser varchar(3) DEFAULT NULL,
lgIDloser varchar(2) DEFAULT NULL,
wins int DEFAULT NULL,
losses int DEFAULT NULL,
ties int DEFAULT NULL,
PRIMARY KEY (yearID,round)
);
-- --------------------------------------------------------
-- 
-- Table structure for table Teams
-- 
-- 
DROP TABLE IF EXISTS teams;
CREATE TABLE IF NOT EXISTS teams (
yearid int NOT NULL,
lgid varchar(2) NOT NULL,
teamid varchar(3) NOT NULL,
franchid varchar(3) DEFAULT NULL,
divid varchar(1) DEFAULT NULL,
rank int DEFAULT NULL,
g int DEFAULT NULL,
ghome int DEFAULT NULL,
w int DEFAULT NULL,
l int DEFAULT NULL,
divwin varchar(1) DEFAULT NULL,
wcwin varchar(1) DEFAULT NULL,
lgwin varchar(1) DEFAULT NULL,
wswin varchar(1) DEFAULT NULL,
r int DEFAULT NULL,
ab int DEFAULT NULL,
h int DEFAULT NULL,
h2b int DEFAULT NULL,
h3b int DEFAULT NULL,
hr int DEFAULT NULL,
bb int DEFAULT NULL,
so int DEFAULT NULL,
sb int DEFAULT NULL,
cs int DEFAULT NULL,
hbp int DEFAULT NULL,
sf int DEFAULT NULL,
ra int DEFAULT NULL,
er int DEFAULT NULL,
era double precision DEFAULT NULL,
cg int DEFAULT NULL,
sho int DEFAULT NULL,
sv int DEFAULT NULL,
ipouts int DEFAULT NULL,
ha int DEFAULT NULL,
hra int DEFAULT NULL,
bba int DEFAULT NULL,
soa int DEFAULT NULL,
e int DEFAULT NULL,
dp int DEFAULT NULL,
fp double precision DEFAULT NULL,
name varchar(50) DEFAULT NULL,
park varchar(255) DEFAULT NULL,
attendance int DEFAULT NULL,
bpf int DEFAULT NULL,
ppf int DEFAULT NULL,
teamidbr varchar(3) DEFAULT NULL,
teamidlahman45 varchar(3) DEFAULT NULL,
teamidretro varchar(3) DEFAULT NULL,
PRIMARY KEY (yearid,lgid,teamid)
);

-- --------------------------------------------------------
-- 
-- Table structure for table TeamsFranchises
-- 
-- 
DROP TABLE IF EXISTS teamsfranchises;
CREATE TABLE IF NOT EXISTS teamsfranchises (
franchid varchar(3) NOT NULL,
franchname varchar(50) DEFAULT NULL,
active varchar(2) DEFAULT NULL,
naassoc varchar(3) DEFAULT NULL,
PRIMARY KEY (franchid)
);
-- --------------------------------------------------------
-- 
-- Table structure for table TeamsHalf
-- 
-- 
DROP TABLE IF EXISTS teamshalf;
CREATE TABLE IF NOT EXISTS teamshalf (
yearid int NOT NULL,
lgid varchar(2) NOT NULL,
teamid varchar(3) NOT NULL,
half varchar(1) NOT NULL,
divid varchar(1) DEFAULT NULL,
divwin varchar(1) DEFAULT NULL,
rank int DEFAULT NULL,
g int DEFAULT NULL,
w int DEFAULT NULL,
l int DEFAULT NULL,
PRIMARY KEY (yearid,teamid,lgid,half)
);
END TRANSACTION;