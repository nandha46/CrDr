# Hope Foundation

![alt Hope Foundation Banner](images/Hope%20Foundation.png 'Hope Foundation')

# ALTER QUERIES
- truncate table family;
- ALTER TABLE `family` ADD PRIMARY KEY(`id`);
- ALTER TABLE `family` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;
- ALTER TABLE `subjects` CHANGE `standardid` `standardid` INT(11) NULL COMMENT 'aka ClssId';
- drop table stu_strengthes;
- ALTER TABLE `rooms` ADD `seating_type` VARCHAR(10) NULL AFTER `room_type`, ADD `no_of_seats` INT NOT NULL DEFAULT '0' AFTER `seating_type`, ADD `bench_capacity` TINYINT NOT NULL DEFAULT '0' AFTER `no_of_seats`;
- ALTER TABLE `rooms` CHANGE `max_capacity` `max_capacity` INT NOT NULL DEFAULT '0', CHANGE `available_capacity` `available_capacity` INT NOT NULL DEFAULT '0';

# Road Map 

ALTER TABLE `staff_details` CHANGE `yearsOfExp` `yearsOfExp` VARCHAR(4) NULL DEFAULT '0';

# VIEWS
 view_students_strength
 - select classes.clssName, sections.secnSecName, count(*) from studentsclasses inner join classes on studentsclasses.stuclClsMasterId = classes.clssId inner join sections on studentsclasses.stuclSecMasterId = sections.secnId GROUP by studentsclasses.stuclClsMasterId, studentsclasses.stuclSecMasterId;

## REPORTS

	1. Students Reports
	2. Staff Reports
	3. Student Performance
	4. Report Range - Daily/Weekly/Range
	5. Events Handling
	6. Reviewed Videos/Books/PDFs
	7. Individual Teacher's/Student'sDetails(Includes 
	   Performance,Activities, Test results) - Specific DateRange

- Student Details
 - Parent Details
    - Parent Feedbacks
 -Staff Management
    - Teachers
    - Admins
    - Staffs
    - HM
  - Account Management
    - Leave Management
    - TimeTable
    - StaffAttendance
- Stock Management
- Transportation 
- Sports & Games
- Admin Management 
- Payroll Management 
- Complaint & Suggestion Panel
- Student & Staff Portfolio
- Events & Blogs
- Press Releases
- Daily Updates
- SMS & News in Websites 
- Fesility Management
- Library Management 
- Recruitement Management 
- Lessions
- Online Tests
- Video Links
- Report Management

### Database

clear student records:
truncate

	users
	students
	addresses
	contacts
	email_address
	family
	orgStudent
	StudentClass
	studentsmarks

clear teacher records:
truncate

	users
	staffs
	addresses
	contacts
	email_address
	family
	staffDetails
	staffEducation
	staffEducationDetails
	OrgClassStaff

clear user records:
truncate

	user
	addresses
	contacts
	email_address
	userDetails
	Privilages

## Logging 

powershell Get-Content -Path ./laravel.log -Tail 40 -Wait
logger(), info(), Log::debug(), now()->toLocalDataTime()

## Used Libraries
	
- [bootstrap 4 calendar](https://github.com/ylli2000/bootstrap-4-calendar) for Timetable 


# RoadMap

Organisation:

	HF:
		Medium Tamil

Configurations:

	1. Online Test
	2. Videos
	3. Documents

Students:

    - Records
    - User Credentials
    - Academic Year

Parents Details:

    -  Basic Info

Standard:

	1 - A,B,C

Terms:

     1
     2
     3
     All

Subjects:
	

Staff Management:

     - User Credentials
     - Class Advisor
     - Subject Related

Lessions: - S1T1Tamil
	
    	- Standard - 1
    	- Syllabus - Term 1
    	- Subject - Tamil 

Unit:

	S1T1Tamil - Dropdown
	Unit No - 1
	Topics
	Videos + 
	Documents + 
	Online Test - SRIMAN

Videos:

	-- Link
	-- Topics 
	-- Extra Links +
	-- Description

Online Test:

	Unit wise/Exam Wise 
	Category 1:
		Test Name: SRIMAN
		10 Question -  5, 2, 

	Category 2: 
		Test Name
		25 - 5 Lessions

Exams:

	Daily
	Weekely
	Monthly,
	Half Yearly
	Annual
	QUarterly 