--system에서 실행
create user toy identified by java1234;

grant connect, RESOURCE, dba to toy;

-- ToyProject
-- 회원
create table tblUser (
    id varchar2(50) not null,
    pw varchar2(50) not null,
    name varchar2(50) not null,
    email varchar2(100) not null,
    lv char(1) not null,
    pic varchar2(100) default 'pic.png' not null,
    intro varchar2(500) not null,
    ing char(1) default 'y' not null,
    constraint tbluser_pk primary key(id)
);

create table tblBoard (
    seq number not null,
    subject varchar2(300) not null,
    content varchar2(4000) not null,
    regdate date default sysdate not null,
    readcount number default 0 not null,
    id varchar2(50) not null,
    constraint tblboard_pk primary key(seq),
    constraint tblboard_fk foreign key(id) references tblUser(id)
);
create sequence seqBoard;

create or replace view vwBoard
as
select seq, subject, id, readcount, content, 
    case
        when to_char(sysdate, 'yyyy-mm-dd') = to_char(regdate, 'yyyy-mm-dd') 
            then to_char(regdate, 'hh24:mi:ss')
        else 
            to_char(regdate, 'yyyy-mm-dd')
    end as regdate,
    (select name from tblUser where id = tblBoard.id) as name,
    case
        when (sysdate - regdate) < 30/24/60 then 1 else 0
    end as isnew,
    (select count(*) from tblComment where bseq = tblBoard.seq) as ccnt
from tblBoard order by seq desc;

create table tblComment (
    seq number not null,
    content varchar2(1000) not null,
    regdate date default sysdate not null,
    id varchar2(50) not null,
    bseq number not null,
    constraint tblComment_pk primary key(seq),
    constraint tblComment_fk_id foreign key(id) references tblUser(id),
    constraint tblComment_fk_bseq foreign key(bseq) references tblBoard(seq)
);

create sequence seqComment;









create table tblMarker (
    seq number primary key,
    lat number not null,
    lng number not null
);
create sequence seqMarker;





create table tblPlace (
    seq number primary key,
    lat number not null,
    lng number not null,
    name varchar2(100) not null,
    category varchar2(100) default 'default' not null
);
create sequence seqPlace;



