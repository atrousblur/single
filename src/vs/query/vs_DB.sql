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

create sequence vs_seq;

insert into vs_board values(vs_seq.nextval, '������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ� ��� �ٳ�� �ǳ���?', '����ϱ�', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, 0, sysdate);
insert into vs_board values(vs_seq.nextval, '���̾�Ʈ ���ε� �� ������ �������?', '����', '��â', '', 'ocean', 0, 0, sysdate);
insert into vs_board values(vs_seq.nextval, '��ȥ�� �յΰ� �ζ� 1�� ��÷�Ǹ� ���� �ֱ�� ���������', '������ ��ȥ', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, 0, sysdate);
insert into vs_board values(vs_seq.nextval, '������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ� ��� �ٳ�� �ǳ���?', '����ϱ�', '��� �ٴϱ�', '���̶� ȸ�� ���� 10�� ���� 3��', 'ocean', 0, 0, sysdate);

update vs_board set vs_title='', vs_optionA='', vs_optionB='', vs_txt='' where vs_no='61';
select * from VS_BOARD;

delete from VS_BOARD;