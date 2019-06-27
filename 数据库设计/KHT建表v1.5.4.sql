/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/27/周四 21:06:42                        */
/*==============================================================*/


drop table if exists dep_acct;

drop table if exists cap_acct;

drop table if exists trd_acct;

drop table if exists cust_acct;

drop table if exists acct_open_info;

drop table if exists image;

drop table if exists organization;

drop table if exists opera_log;

drop table if exists employee;

drop table if exists user;

drop table if exists pos_opera_rel;

drop table if exists operation;

drop table if exists position;

drop table if exists sub_data_dict;

drop table if exists main_data_dict;

drop table if exists sys_para;

/*==============================================================*/
/* Table: acct_open_info                                        */
/*==============================================================*/
create table acct_open_info
(
   INFO_CODE            int not null auto_increment,
   USER_CODE            int not null,
   IMG_CODE             int not null,
   NAME                 varchar(15) not null,
   GENDER               char(1) not null default '0',
   ID_TYPE              char(1) not null default '0',
   ID_CODE              varchar(20) not null,
   ID_EFF_DATE          bigint not null default 0,
   ID_EXP_DATE          bigint not null default 0,
   TELEPHONE            bigint(11) not null default 0,
   EMAIL                varchar(30) not null,
   ADDRESS              varchar(40) not null,
   OCCUPATION           varchar(25) not null,
   COMPANY              varchar(30) not null,
   EDUCATION            char(1) not null default '0',
   ORG_CODE             varchar(4) not null,
   ANS_ONE              char(1) not null default 'A',
   ANS_TWO              char(1) not null default 'A',
   ANS_THREE            char(1) not null default 'A',
   ANS_FOUR             char(1) not null default 'A',
   ANS_FIVE             char(1) not null default 'A',
   ANS_SIX              char(1) not null default 'A',
   ANS_SEVEN            char(1) not null default 'A',
   ANS_EIGHT            char(1) not null default 'A',
   ANS_NINE             char(1) not null default 'A',
   ANS_TEN              char(1) not null default 'A',
   BANK_TYPE            char(2) not null default '00',
   BANK_CARD_CODE       varchar(20) not null,
   OPEN_CHANNEL         char(1) not null default '0',
   CMT_TIME             bigint not null default 0,
   INFO_STATUS          char(1) not null default '0',
   primary key (INFO_CODE)
);

alter table acct_open_info comment '用于存放用户开户资料的信息';

/*==============================================================*/
/* Table: cap_acct                                              */
/*==============================================================*/
create table cap_acct
(
   CAP_CODE             varchar(12) not null,
   CUST_CODE            varchar(12) not null comment '前4位为营业网点编号',
   ORG_CODE             varchar(4) not null,
   CAP_PWD              varchar(32) not null,
   CURRENCY             char(1) not null default '0',
   MAIN_FLAG            boolean not null default false,
   ATTR                 char(1) not null default '0',
   OPEN_TIME            bigint not null default 0,
   CLOSE_TIME           bigint not null default 0,
   CAP_STATUS           char(1) not null default '0',
   primary key (CAP_CODE)
);

alter table cap_acct comment '用于存放资金账户的信息（存放开户信息的一部分），一个客户账户可拥有至少一个资金账户';

/*==============================================================*/
/* Table: cust_acct                                             */
/*==============================================================*/
create table cust_acct
(
   CUST_CODE            varchar(12) not null comment '前4位为营业网点编号',
   USER_CODE            int not null,
   IMG_CODE             int not null,
   ORG_CODE             varchar(4) not null,
   NAME                 varchar(15) not null,
   GENDER               char(1) not null default '0',
   ID_TYPE              char(1) not null default '0',
   ID_CODE              varchar(20) not null,
   ID_EFF_DATE          bigint not null default 0,
   ID_EXP_DATE          bigint not null default 0,
   TELEPHONE            bigint(11) not null default 0,
   EMAIL                varchar(30) not null,
   ADDRESS              varchar(40) not null,
   OCCUPATION           varchar(25) not null,
   COMPANY              varchar(30) not null,
   EDUCATION            char(1) not null default '0',
   INVESTOR_TYPE        char(1) not null default '0',
   OPEN_TIME            bigint not null default 0,
   CLOSE_TIME           bigint not null default 0,
   CUST_STATUS          char(1) not null default '0',
   primary key (CUST_CODE),
   unique key AK_Key_2 (ID_TYPE, ID_CODE)
);

alter table cust_acct comment '用于存放客户账户的信息（存放开户信息的一部分），一个客户只有一个客户账户';

/*==============================================================*/
/* Table: dep_acct                                              */
/*==============================================================*/
create table dep_acct
(
   DEP_CODE             varchar(12) not null,
   CAP_CODE             varchar(12) not null,
   BANK_TYPE            char(2) not null default '00' comment '0 中国工商银行
            1 中国农业银行
            2 中国银行
            3 中国建设银行
            4 中国光大银行
            5 中国民生银行
            6 招商银行
            7 华夏银行
            8 交通银行
            9 兴业银行
            10 恒丰银行
            11 中信银行
            12 上海浦东发展银行
            13 广东发展银行
            14 深圳发展银行',
   BANK_CARD_CODE       varchar(20) not null,
   OPEN_TIME            bigint not null default 0,
   CLOSE_TIME           bigint not null default 0,
   DEP_STATUS           char(1) not null default '0',
   primary key (DEP_CODE)
);

alter table dep_acct comment '用于存放存管账户的信息（存放开户信息的一部分），一个资金账户对应一个存管账户';

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee
(
   EMPLOYEE_CODE        varchar(12) not null,
   USER_CODE            int not null,
   POS_CODE             int,
   EMPLOYEE_NAME        varchar(15) not null,
   ID_CODE              varchar(20) not null,
   TELEPHONE            bigint(11) not null,
   EMAIL                varchar(30) not null,
   ADDRESS              varchar(50) not null,
   EMPLOYEE_STATUS      char(1) not null default '0',
   primary key (EMPLOYEE_CODE)
);

alter table employee comment '用于存放员工信息';

/*==============================================================*/
/* Table: image                                                 */
/*==============================================================*/
create table image
(
   IMG_CODE             int not null auto_increment,
   ID_FRONT             varchar(50) not null,
   ID_BACK              varchar(50) not null,
   FACE                 varchar(50) not null,
   primary key (IMG_CODE)
);

alter table image comment '用于存放影像资料的url';

/*==============================================================*/
/* Table: main_data_dict                                        */
/*==============================================================*/
create table main_data_dict
(
   MAIN_CODE            int not null auto_increment,
   COL_NAME             varchar(10) not null,
   COL_CODE             varchar(20) not null,
   TAB_CODE             varchar(20) not null,
   primary key (MAIN_CODE)
);

alter table main_data_dict comment '用于存放数据字典主表信息';

/*==============================================================*/
/* Table: opera_log                                             */
/*==============================================================*/
create table opera_log
(
   LOG_CODE             int not null auto_increment comment '自增',
   EMPLOYEE_CODE        varchar(12) not null,
   OPERA_CODE           int not null,
   LOG_TIME             bigint not null default 0,
   primary key (LOG_CODE)
);

alter table opera_log comment '记录员工操作流水';

/*==============================================================*/
/* Table: operation                                             */
/*==============================================================*/
create table operation
(
   OPERA_CODE           int not null auto_increment,
   OPERA_NAME           varchar(20) not null,
   URL                  varchar(40) not null,
   OPERA_TYPE           varchar(6) not null,
   primary key (OPERA_CODE)
);

alter table operation comment '用于存放操作信息';

/*==============================================================*/
/* Table: organization                                          */
/*==============================================================*/
create table organization
(
   ORG_CODE             varchar(4) not null,
   ORG_NAME             varchar(20) not null,
   ORG_ADDR             varchar(40) not null,
   ORG_TEL              bigint(11) not null,
   primary key (ORG_CODE)
);

alter table organization comment '用于存放营业网点信息';

/*==============================================================*/
/* Table: pos_opera_rel                                         */
/*==============================================================*/
create table pos_opera_rel
(
   REL_CODE             int not null auto_increment,
   POS_CODE             int not null,
   OPERA_CODE           int not null,
   primary key (REL_CODE)
);

alter table pos_opera_rel comment '用于存放岗位与操作的关系';

/*==============================================================*/
/* Table: position                                              */
/*==============================================================*/
create table position
(
   POS_CODE             int not null auto_increment,
   POS_NAME             varchar(15) not null,
   primary key (POS_CODE)
);

alter table position comment '用于存放岗位信息';

/*==============================================================*/
/* Table: sub_data_dict                                         */
/*==============================================================*/
create table sub_data_dict
(
   SUB_CODE             int not null auto_increment,
   MAIN_CODE            int not null,
   VALUE_CODE           varchar(2) not null,
   VALUE                varchar(10) not null,
   primary key (SUB_CODE),
   unique key AK_Key_2 (MAIN_CODE, VALUE_CODE)
);

alter table sub_data_dict comment '用于存放数据字典子表的信息';

/*==============================================================*/
/* Table: sys_para                                              */
/*==============================================================*/
create table sys_para
(
   PARA_CODE            int not null auto_increment comment '自增',
   PARA_NAME            varchar(20) not null,
   PARA_VALUE           varchar(20) not null,
   primary key (PARA_CODE)
);

alter table sys_para comment '用于存放系统参数信息';

/*==============================================================*/
/* Table: trd_acct                                              */
/*==============================================================*/
create table trd_acct
(
   TRD_CODE             varchar(10) not null comment '前1位代表交易所类型',
   CUST_CODE            varchar(12) not null comment '前4位为营业网点编号',
   STK_EX               char(1) not null default '0',
   STK_BD               char(2) not null default '00',
   CUST_TYPE            char(1) not null default '0',
   TRD_UNIT             char(1) not null default '0',
   OPEN_TIME            bigint not null default 0,
   CLOSE_TIME           bigint not null default 0,
   TDR_STATUS           char(1) not null default '0',
   primary key (TRD_CODE)
);

alter table trd_acct comment '用于存放证券账户的信息，一个客户账户对应多个证券账户';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   USER_CODE            int not null auto_increment,
   USER_TYPE            char(1) not null default '0',
   TELEPHONE            bigint(11) not null default 0,
   PASSWORD             varchar(32) not null,
   primary key (USER_CODE),
   unique key AK_Key_2 (TELEPHONE)
);

alter table user comment '用于存放用户信息，一个用户仅对应一个客户账户';

alter table acct_open_info add constraint FK_Reference_5 foreign key (IMG_CODE)
      references image (IMG_CODE) on delete restrict on update restrict;

alter table acct_open_info add constraint FK_Reference_7 foreign key (USER_CODE)
      references user (USER_CODE) on delete restrict on update restrict;

alter table cap_acct add constraint FK_Reference_2 foreign key (CUST_CODE)
      references cust_acct (CUST_CODE) on delete restrict on update restrict;

alter table cap_acct add constraint FK_Reference_6 foreign key (ORG_CODE)
      references organization (ORG_CODE) on delete restrict on update restrict;

alter table cust_acct add constraint FK_Reference_11 foreign key (IMG_CODE)
      references image (IMG_CODE) on delete restrict on update restrict;

alter table cust_acct add constraint FK_Reference_12 foreign key (ORG_CODE)
      references organization (ORG_CODE) on delete restrict on update restrict;

alter table cust_acct add constraint FK_Reference_9 foreign key (USER_CODE)
      references user (USER_CODE) on delete restrict on update restrict;

alter table dep_acct add constraint FK_Reference_10 foreign key (CAP_CODE)
      references cap_acct (CAP_CODE) on delete restrict on update restrict;

alter table employee add constraint FK_Reference_15 foreign key (POS_CODE)
      references position (POS_CODE) on delete restrict on update restrict;

alter table employee add constraint FK_Reference_8 foreign key (USER_CODE)
      references user (USER_CODE) on delete restrict on update restrict;

alter table opera_log add constraint FK_Reference_16 foreign key (OPERA_CODE)
      references operation (OPERA_CODE) on delete restrict on update restrict;

alter table opera_log add constraint FK_Reference_4 foreign key (EMPLOYEE_CODE)
      references employee (EMPLOYEE_CODE) on delete restrict on update restrict;

alter table pos_opera_rel add constraint FK_Reference_13 foreign key (POS_CODE)
      references position (POS_CODE) on delete restrict on update restrict;

alter table pos_opera_rel add constraint FK_Reference_14 foreign key (OPERA_CODE)
      references operation (OPERA_CODE) on delete restrict on update restrict;

alter table sub_data_dict add constraint FK_Reference_1 foreign key (MAIN_CODE)
      references main_data_dict (MAIN_CODE) on delete restrict on update restrict;

alter table trd_acct add constraint FK_Reference_3 foreign key (CUST_CODE)
      references cust_acct (CUST_CODE) on delete restrict on update restrict;

