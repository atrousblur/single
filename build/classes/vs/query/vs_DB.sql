select * from tab;

select * from VS_BOARD;

create sequence vs_seq;
<<<<<<< HEAD
insert into vs_board values(vs_seq.nextval, '������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ� ��� �ٳ�� �ǳ���?', '����ϱ�', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, 0, sysdate);
insert into vs_board values(vs_seq.nextval, '���̾�Ʈ ���ε� �� ������ �������?', '����', '��â', '', 'ocean', 0, sysdate);
insert into vs_board values(vs_seq.nextval, '��ȥ�� �յΰ� �ζ� 1�� ��÷�Ǹ� ���� �ֱ�� ���������', '������ ��ȥ', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, 0, sysdate);
insert into vs_board values(vs_seq.nextval, '������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ� ��� �ٳ�� �ǳ���?', '����ϱ�', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, 0, sysdate);

drop table VS_BOARD;


create table vs_board(
vs_no number,
vs_title varchar2(100),
vs_optionA varchar2(100),
vs_optionB varchar2(100),
vs_txt varchar2(1000),
me_id varchar2(30),
vs_hitsA number,
vs_hitsB number,
vs_date date);


update VS_BOARD
set vs_hitsA = vs_hitsA+1
where vs_no='53';
=======
insert into vs_board values(vs_seq.nextval, '������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ� ��� �ٳ�� �ǳ���?', '����ϱ�', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, sysdate);
insert into vs_board values(vs_seq.nextval, '���̾�Ʈ ���ε� �� ������ �������?', '����', '��â', '', 'ocean', 0, sysdate);
insert into vs_board values(vs_seq.nextval, '��ȥ�� �յΰ� �ζ� 1�� ��÷�Ǹ� ���� �ֱ�� ���������', '������ ��ȥ', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, sysdate);
insert into vs_board values(vs_seq.nextval, '������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ� ��� �ٳ�� �ǳ���?', '����ϱ�', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, sysdate);


>>>>>>> refs/remotes/origin/kdy
