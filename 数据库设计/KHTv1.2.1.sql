/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/12/���� 21:00:31                        */
/*==============================================================*/


drop table if exists Employee;

drop table if exists capital_account;

drop table if exists customer_account;

drop table if exists depository_account;

drop table if exists menu;

drop table if exists operation_log;

drop table if exists organization;

drop table if exists securities_account;

drop table if exists user;

/*==============================================================*/
/* Table: Employee                                              */
/*==============================================================*/
create table Employee
(
   employee_id          varchar(10) not null comment '���ַ�Ϊ''E''�����ַ�Ϊ���ֵ��ַ�������󳤶Ȳ�����10λ�ַ�
            ʾ����E666666666',
   employee_pwd         varchar(16),
   name                 varchar(30) not null,
   identity_number      varchar(20) not null,
   telephone            bigint(11) not null,
   email                varchar(30) not null,
   address              varchar(50) not null,
   position             int not null default 0 comment '0 ����Ա
            1 ���Ա
            ',
   authority            int not null default 0 comment '0 ��Ȩ��
            1 �鿴Ȩ��
            2 ���Ȩ��
            3 ϵͳ�����޸�Ȩ��
            4 Ա������Ȩ��',
   employee_state       int not null default 0 comment '0 ��ְ
            1 ְͣ
            2 ��ְ',
   primary key (employee_id)
);

alter table Employee comment '���ڴ��Ա����Ϣ';

/*==============================================================*/
/* Table: capital_account                                       */
/*==============================================================*/
create table capital_account
(
   capital_id           varchar(10) not null,
   customer_id          varchar(10) not null,
   depository_id        varchar(10) not null,
   capital_pwd          varchar(16) not null,
   primary key (capital_id)
);

alter table capital_account comment '���ڴ���ʽ��˻�����Ϣ����ſ�����Ϣ��һ���֣���һ���ͻ��˻���ӵ������һ���ʽ��˻�';

/*==============================================================*/
/* Table: customer_account                                      */
/*==============================================================*/
create table customer_account
(
   customer_id          varchar(10) not null comment '���ַ�Ϊ''C''�����ַ�Ϊ���ֵ��ַ�������󳤶Ȳ�����10λ�ַ�
            ʾ����C666666666',
   name                 varchar(30) not null,
   certificate_type     int not null default 0 comment '0 ���֤
            1 Ӫҵִ��',
   certificate_id       varchar(20) not null,
   address              varchar(50) not null,
   job                  varchar(20) not null,
   education            int not null default 0 comment '0 Сѧ
            1 ����
            2 ����
            3 ר��
            4 ����
            5 �о���
            7 ����',
   email                varchar(30) not null,
   organization_id      varchar(10) not null default '0',
   image_1              varchar(50) not null,
   image_2              varchar(50) not null,
   face_image           varchar(50) not null,
   investor_type        int not null default 0 comment '0 ��ͨ
            1 ����
            2 ����',
   commit_time          bigint not null default 0,
   state                int not null default 0 comment '0 �����
            1 ���ͨ��
            2 ���δͨ��',
   primary key (customer_id)
);

alter table customer_account comment '���ڴ�ſͻ��˻�����Ϣ����ſ�����Ϣ��һ���֣���һ���ͻ�ֻ��һ���ͻ��˻�';

/*==============================================================*/
/* Table: depository_account                                    */
/*==============================================================*/
create table depository_account
(
   depository_id        varchar(10) not null,
   bank_type            int not null default 0 comment '0 �й���������
            1 �й�ũҵ����
            2 �й�����
            3 �й���������
            4 �й��������
            5 �й���������
            6 ��������
            7 ��������
            8 ��ͨ����
            9 ��ҵ����
            10 �������
            11 ��������
            12 �Ϻ��ֶ���չ����
            13 �㶫��չ����
            14 ���ڷ�չ����',
   bank_card_number     varchar(20) not null,
   primary key (depository_id)
);

alter table depository_account comment '���ڴ�Ŵ���˻�����Ϣ����ſ�����Ϣ��һ���֣���һ���ʽ��˻���Ӧһ������˻�';

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   id                   int not null auto_increment,
   authority            int not null default 0 comment '0 ��Ȩ��
            1 �鿴Ȩ��
            2 ���Ȩ��
            3 ϵͳ�����޸�Ȩ��
            4 Ա������Ȩ��',
   operation            int not null default 0 comment '0 ��¼
            1 �鿴
            2 ���
            3 ��ѯͳ��
            4 �޸�ϵͳ����
            5.�޸�Ա��Ȩ��
            6 �޸�Ա����Ϣ
            ',
   primary key (id)
);

alter table menu comment '���ڼ�¼��ͬȨ�޿�ִ�еĲ����б�';

/*==============================================================*/
/* Table: operation_log                                         */
/*==============================================================*/
create table operation_log
(
   id                   int not null auto_increment,
   time                 bigint not null default 0,
   employee_id          varchar(10) not null comment 'ִ�в�����Ա�����˺�',
   operated_personnel   varchar(10) not null comment '�ܲ���Ӱ�����Ա�˺ţ������λ�����Ȩ���޸ĵ�
            ��������ڣ�Ĭ��Ϊ""',
   operation            int not null default 0 comment '0 ��¼
            1 �鿴
            2 ���
            3 ��ѯͳ��
            4 �޸�ϵͳ����
            5.�޸�Ա��Ȩ��
            6 �޸�Ա����Ϣ
            ',
   description          varchar(30) not null comment '������ϸ�Ĳ������������������ݣ����޸���ʲô��Ϣ',
   primary key (id)
);

alter table operation_log comment '��¼Ա��������ˮ';

/*==============================================================*/
/* Table: organization                                          */
/*==============================================================*/
create table organization
(
   organization_id      varchar(10) not null comment '���ַ�Ϊ''O''�����ַ�Ϊ���ֵ��ַ�������󳤶Ȳ�����10λ�ַ�
            ʾ����O666666666',
   organizatin_name     varchar(20) not null,
   organization_address varchar(50) not null,
   telephone            bigint(11) not null,
   primary key (organization_id)
);

alter table organization comment '���ڴ�Ż�����Ϣ';

/*==============================================================*/
/* Table: securities_account                                    */
/*==============================================================*/
create table securities_account
(
   securities_id        varchar(10) not null,
   customer_id          varchar(10) not null,
   securities_type      int comment '0 �Ϻ�֤ȯ�˻�
            1 ����֤ȯ�˻�',
   primary key (securities_id)
);

alter table securities_account comment '���ڴ��֤ȯ�˻�����Ϣ��һ���ͻ��˻���Ӧ���֤ȯ�˻�';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   int not null auto_increment,
   telephone            bigint(11) not null default 0,
   customer_id          varchar(10) not null default '0',
   password             varchar(16) not null default '0',
   primary key (id)
);

alter table user comment '���ڴ���û���Ϣ��һ���û�����Ӧһ���ͻ��˻�';

alter table capital_account add constraint FK_Reference_2 foreign key (customer_id)
      references customer_account (customer_id) on delete restrict on update restrict;

alter table capital_account add constraint FK_Reference_3 foreign key (depository_id)
      references depository_account (depository_id) on delete restrict on update restrict;

alter table customer_account add constraint FK_Reference_6 foreign key (organization_id)
      references organization (organization_id) on delete restrict on update restrict;

alter table operation_log add constraint FK_Reference_7 foreign key (employee_id)
      references Employee (employee_id) on delete restrict on update restrict;

alter table securities_account add constraint FK_Reference_4 foreign key (customer_id)
      references customer_account (customer_id) on delete restrict on update restrict;

alter table user add constraint FK_Reference_1 foreign key (customer_id)
      references customer_account (customer_id) on delete restrict on update restrict;

