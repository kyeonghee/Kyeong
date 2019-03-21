create table dormcheck(
dormNum number(5) primary key,
roomNum number(5),
studentNum char(8),
StudentName varchar2(20) not null,
marjorNum char(2) not null,
foreign key (roomNum) references dorm (roomNum),
foreign key (studentNum) references student (studentNum)
);