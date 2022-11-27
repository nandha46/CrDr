-- Students

select * from students where stuId = 7;
select * from family where userid = 21;
select * from orgstudents where orstStuMasterId = 7;

delete from students where stuId = 7;
delete from users where id = 21;
delete from family where userid = 21;
-- family.address_id
delete from addresses where id = 1;
-- family.contact_id
delete from contactdetails where condId = 1;
-- family.email_id
delete from emailaddresses where emlId = 1;
-- stuId
delete from orgstudents where orstStuMasterId = 7;
-- orgstudents.orstId
delete from studentsclasses where stuclOrgStuMasterId = 6;
-- users.id
delete from studentsmarks where student_user_id = 21;