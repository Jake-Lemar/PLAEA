

# Designing A Schema
create table PLAEA_User(
    FirstName varchar(255),
    LastName varchar(225),
	UserID  int
);
select * from PLAEA_User;
create table Teacher(
    teacher_name varchar(255),
    district varchar(225),
	date_training date
);

create table Login(
	FirstName varchar (225),
    Lastname varchar (225),
    username varchar(225),
    _password varchar(225),
    id int
);
 select * from Login;
 
create table check_in(
	userid int,
    login datetime
);

select * from check_in;

INSERT into check_in (userid, login) VALUES (3, CURTIME());

CREATE TABLE School_list(
	district varchar (225),
	school varchar (225),
    building varchar (225)
);

select * from School_list;

select distinct district  from School_list; 
SELECT school FROM School_lsit WHERE school LIKE %emm%;
SELECT school FROM School_list WHERE school LIKE '%emm%';



CREATE TABLE DATA_LOG(
	school varchar (225),
    district varchar (225),
    building varchar (225),
    time_doc datetime,
    userid int,
    schoolid int not null auto_increment,
    primary key (schoolid)
);

INSERT INTO DATA_LOG (school, district, building, time_doc) values ('Titonka Elementary School','Titonka','Elementary School',CURTIME());
select * from DATA_LOG;

INSERT INTO School_list VALUES("Albert City-Truesdale", "Albert City-Truesdale Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Algona", "Bertha Godfrey Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Algona", "Bryant Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Algona", "Algona Middle School", "Middle School");
INSERT INTO School_list VALUES("Algona", "Algona High School", "High School");
INSERT INTO School_list VALUES("Algona", "Lucia Wallace Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Alta Aurelia", "Alta Senior High School", "High School");
INSERT INTO School_list VALUES("Alta Aurelia", "Alta Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Alta Aurelia", "Alta Middle School", "Middle School");
INSERT INTO School_list VALUES("Clarion-Goldfield", "Clarion Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Clarion-Goldfield", "Clarion-Goldfield High School", "High School");
INSERT INTO School_list VALUES("Clarion-Goldfield", "Clarion-Goldfield Middle School", "Middle School");
INSERT INTO School_list VALUES("Clarion-Goldfield", "Clarion-Goldfield Alternative School", "Other");
INSERT INTO School_list VALUES("Clay Central-Everly", "Clay Central-Everly Elementary At Royal", "Elementary School");
INSERT INTO School_list VALUES("Clay Central-Everly", "Clay Central-Everly High School", "High School");
INSERT INTO School_list VALUES("Clay Central-Everly", "Clay Central-Everly Middle School", "Middle School");
INSERT INTO School_list VALUES("Eagle Grove", "Robert Blue School", "Other");
INSERT INTO School_list VALUES("Eagle Grove", "Eagle Grove Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Eagle Grove", "Eagle Grove High School", "High School");
INSERT INTO School_list VALUES("East Sac County", "East Sac County Elementary Wall Lake", "Elementary School");
INSERT INTO School_list VALUES("East Sac County", "East Sac County High School", "High School");
INSERT INTO School_list VALUES("Emmetsburg", "Emmetsberg High School", "High School");
INSERT INTO School_list VALUES("Emmetsburg", "West Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Emmetsburg", "Emmetsberg Middle School", "Middle School");
INSERT INTO School_list VALUES("Estherville Lincoln Central", "Estherville Lincoln Central High School", "High School");
INSERT INTO School_list VALUES("Estherville Lincoln Central", "Estherville Lincoln Central Middle School", "Middle School");
INSERT INTO School_list VALUES("Estherville Lincoln Central", "Demoney Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Estherville Lincoln Central", "Roosevelt Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Fort Dodge", "Butler Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Fort Dodge", "Cooper Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Fort Dodge", "Feelhaver Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Fort Dodge", "Fort Dodge High School", "High School");
INSERT INTO School_list VALUES("Fort Dodge", "Duncombe Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Fort Dodge", "Gordon Willard Alternative Ed High School", "Other");
INSERT INTO School_list VALUES("Fort Dodge", "Hillcrest Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Fort Dodge", "Riverside Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Gilmore City-Bradgate", "Gilmore City-Bradgate Middle School", "Middle School");
INSERT INTO School_list VALUES("Gilmore City-Bradgate", "Gilmore City Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Graettinger-Terril", "Graettinger-Terril High School", "High School");
INSERT INTO School_list VALUES("Graettinger-Terril", "Graettinger-Terril Middle School", "Middle School");
INSERT INTO School_list VALUES("Graettinger-Terril", "Graettinger-Terril Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Greene County", "Greene Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Greene County", "North Butler High School", "High School");
INSERT INTO School_list VALUES("Harris-Lake Park", "Harris-Lake Park Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Harris-Lake Park", "Harris-Lake Park High School", "High School");
INSERT INTO School_list VALUES("Humboldt", "Clyde D Mease Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Humboldt", "Humboldt High School", "High School");
INSERT INTO School_list VALUES("Humboldt", "Taft Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Humboldt", "Humboldt Middle School", "Middle School");
INSERT INTO School_list VALUES("Laurens Marathon", "Laurens Marathon High School", "High School");
INSERT INTO School_list VALUES("Laurens Marathon", "Laurens Marathon Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Laurens Marathon", "Laurens Marathon Middle School", "Middle School");
INSERT INTO School_list VALUES("LuVerne", "LuVerne Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Manson Northwest-Webster", "Manson Northwest Webster Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Manson Northwest-Webster", "Manson Northwest Webster High School", "High School");
INSERT INTO School_list VALUES("Manson Northwest-Webster", "Manson Northwest Webster Middle School", "Middle School");
INSERT INTO School_list VALUES("Newell-Fonda", "Newell-Fonda High School", "High School");
INSERT INTO School_list VALUES("Newell-Fonda", "Newell-Fonda Upper Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Newell-Fonda", "Newell-Fonda Middle School", "Middle School");
INSERT INTO School_list VALUES("Newell-Fonda", "Newell-Fonda Lower Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Northeast Hamilton", "Northeast Hamilton High School", "High School");
INSERT INTO School_list VALUES("Northeast Hamilton", "Northeast Hamilton Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Northeast Hamilton", "Northeast Hamilton Middle School", "Middle School");
INSERT INTO School_list VALUES("North Union", "North Union Elementary School", "Elementary School");
INSERT INTO School_list VALUES("North Union", "North Union Middle School", "Middle School");
INSERT INTO School_list VALUES("North Union", "North Union High School", "High School");
INSERT INTO School_list VALUES("Odeboldt-Arthur", "Oa-Bcig Middle School", "Middle School");
INSERT INTO School_list VALUES("Odeboldt-Arthur", "Odebolt-Arthur Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Odeboldt-Arthur", "Odebolt-Arthur High School", "High School");
INSERT INTO School_list VALUES("Okoboji", "Okoboji Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Okoboji", "Okoboji Middle School", "Middle School");
INSERT INTO School_list VALUES("Okoboji", "Okoboji High School", "High School");
INSERT INTO School_list VALUES("Paton-Churdan", "Paton-Churdan Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Paton-Churdan", "Paton-Churdan High School", "High School");
INSERT INTO School_list VALUES("Pocahontas Area", "Pocahontas Area Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Pocahontas Area", "Pocahontas Area High School", "High School");
INSERT INTO School_list VALUES("Pocahontas Area", "Pocahontas Area Regional Learning Center", "Other");
INSERT INTO School_list VALUES("Pocahontas Area", "Pocahontas Area Middle School", "Middle School");
INSERT INTO School_list VALUES("Prairie Valley", "Prairie Valley Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Prairie Valley", "Prairie Valley High School", "High School");
INSERT INTO School_list VALUES("Prairie Valley", "Prairie Valley Middle School", "Middle School");
INSERT INTO School_list VALUES("Prairie Valley", "Early Childhood Center", "Other");
INSERT INTO School_list VALUES("Ridge View", "Ridge View High School", "High School");
INSERT INTO School_list VALUES("Ridge View", "Ridge View Middle School", "Middle School");
INSERT INTO School_list VALUES("Ridge View", "Ridge View Upper Elementary", "Elementary School");
INSERT INTO School_list VALUES("Ridge View", "Ridge View Lower Elementary", "Elementary School");
INSERT INTO School_list VALUES("Ridge View", "Ridge View Elementary", "Elementary School");
INSERT INTO School_list VALUES("Ruthven- Ayrshire", "Ruthven- Ayrshire Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Ruthven- Ayrshire", "Ruthven- Ayrshire High School", "High School");
INSERT INTO School_list VALUES("Sioux Central", "Sioux Central High School", "High School");
INSERT INTO School_list VALUES("Sioux Central", "Sioux Central Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Sioux Central", "Sioux Central Middle School", "Middle School");
INSERT INTO School_list VALUES("South Hamilton", "South Hamiton Elementary School", "Elementary School");
INSERT INTO School_list VALUES("South Hamilton", "South Hamilton Middle and High School", "High School");
INSERT INTO School_list VALUES("South Central Calhoun", "South Central Calhoun Elementary School", "Elementary School");
INSERT INTO School_list VALUES("South Central Calhoun", "South Central Calhoun Middle School", "Middle School");
INSERT INTO School_list VALUES("South Central Calhoun", "South Central Calhoun High School", "High School");
INSERT INTO School_list VALUES("Southeast Webster Grand", "Southeast Webster Grand High School", "High School");
INSERT INTO School_list VALUES("Southeast Webster Grand", "Southeast Webster Grand Junior High School", "Middle School");
INSERT INTO School_list VALUES("Southeast Webster Grand", "Dayton Center", "Other");
INSERT INTO School_list VALUES("Southeast Webster Grand", "Grand Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Southeast Webster Grand", "Iowa Central Charter High School", "High School");
INSERT INTO School_list VALUES("Spencer", "Spencer High School", "High School");
INSERT INTO School_list VALUES("Spencer", "Fairview Park Elementary  School", "Elementary School");
INSERT INTO School_list VALUES("Spencer", "Johnson Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Spencer", "Lincoln Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Spencer", "Spencer Middle School", "Middle School");
INSERT INTO School_list VALUES("Spirit Lake", "Spirit Lake Middle School", "Middle School");
INSERT INTO School_list VALUES("Spirit Lake", "Spirit Lake Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Spirit Lake", "Spirit Lake High School", "High School");
INSERT INTO School_list VALUES("Storm Lake", "East Early Childhood Center", "Other");
INSERT INTO School_list VALUES("Storm Lake", "Storm Lake Middle School", "High School");
INSERT INTO School_list VALUES("Storm Lake", "Storm Lake Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Storm Lake", "South Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Storm Lake", "North Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Storm Lake", "Storm Lake High School", "High School");
INSERT INTO School_list VALUES("Storm Lake", "West Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Storm Lake", "St Lake Early College High School", "High School");
INSERT INTO School_list VALUES("Storm Lake", "Storm Lake Alternative School", "Other");
INSERT INTO School_list VALUES("Stratford", "Stratford Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Titonka", "Titonka Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Titonka", "Titonka Middle School", "Middle School");
INSERT INTO School_list VALUES("Twin Rivers", "Twin Rivers Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Webster City", "Sunset Heights Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Webster City", "Pleasant View Elementary School", "Elementary School");
INSERT INTO School_list VALUES("Webster City", "Webster City Middle School", "Middle School");
INSERT INTO School_list VALUES("Webster City", "Webster City High School", "High School");
INSERT INTO School_list VALUES("Webster City", "Hamilton Regional High School", "High School");
INSERT INTO School_list VALUES("West Bend-Mallard", "Mallard Elementary School", "Elementary School");
INSERT INTO School_list VALUES("West Bend-Mallard", "West Bend-Mallard Middle School", "Middle School");
INSERT INTO School_list VALUES("West Bend-Mallard", "West Bend-Mallard High School", "High School");
INSERT INTO School_list VALUES("West Bend-Mallard", "West Bend Elementary School", "Elementary School");