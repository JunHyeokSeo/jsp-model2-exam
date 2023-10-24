create table model2member(
                             id varchar2(20) primary key,
                             passwd varchar2(20) not null,
                             name varchar2(20) not null,
                             jumin1 varchar2(6) not null,
                             jumin2 varchar2(7) not null,
                             mailid varchar2(30),
                             domain varchar2(30),
                             tel1 varchar2(5),
                             tel2 varchar2(5),
                             tel3 varchar2(5),
                             phone1 varchar2(5),
                             phone2 varchar2(5),
                             phone3 varchar2(5),
                             post varchar2(10),
                             address varchar2(200),
                             gender varchar2(20),
                             hobby varchar2(50),
                             intro varchar2(2000),
                             register timestamp );

create table model2board (
                             board_num number,
                             board_name varchar2(20),
                             board_pass varchar2(15),
                             board_subject varchar2(50),
                             board_content varchar2(2000),
                             board_file varchar2(50),
                             board_re_ref number,
                             board_re_lev number,
                             board_re_seq number,
                             board_readcount number,
                             board_date timestamp,
                             primary key(board_num)
);

create sequence model2board_seq
    start with 1
    increment by 1
    nocache;

insert into model2board values (model2board_seq.nextval, 'jun', 'pass', '원문', 'hi', '', model2board_seq.nextval, 0, 0, 0, sysdate);

select *
from model2board;

BEGIN
    FOR I IN 1..120
        LOOP
            INSERT INTO model2board VALUES (model2board_seq.NEXTVAL, 'jun', 'pass', '원문 ' || TO_CHAR(I), 'hi', '', model2board_seq.NEXTVAL, 0, 0, 0, SYSDATE);
        END LOOP;
END;


delete from model2board;
drop sequence model2board_seq;