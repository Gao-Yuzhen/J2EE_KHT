/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/17/周一 9:55:28                         */
/*==============================================================*/


drop table if exists CAP_ACCT;

drop table if exists TRD_ACCT;

drop table if exists USER;

drop table if exists DEP_ACCT;

drop table if exists CUST_ACCT;

drop table if exists ACCT_OPEN_INFO;

drop table if exists IMAGE;

drop table if exists ORGANIZATION;

drop table if exists OPERA_LOG;

drop table if exists EMPLOYEE;

drop table if exists POSITION;

drop table if exists SUB_DATA_DICT;

drop table if exists MAIN_DATA_DICT;

drop table if exists SYS_PARA;

/*==============================================================*/
/* Table: ACCT_OPEN_INFO                                        */
/*==============================================================*/
create table ACCT_OPEN_INFO
(
   INFO_CODE            int not null auto_increment,
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
   BANK_TYPE            char(2) not null default '0',
   BANK_CARD_CODE       varchar(20) not null,
   OPEN_CHANNEL         char(1) not null default '0',
   CMT_TIME             bigint not null default 0,
   INFO_STATUS          char(1) not null default '0',
   primary key (INFO_CODE)
);

alter table ACCT_OPEN_INFO comment '用于存放用户开户资料的信息';

/*==============================================================*/
/* Table: CAP_ACCT                                              */
/*==============================================================*/
create table CAP_ACCT
(
   CAP_CODE             varchar(12) not null,
   CUST_CODE            varchar(12) not null comment '前4位为营业网点编号',
   DEP_CODE             varchar(12) not null,
   ORG_CODE             varchar(4),
   CAP_PWD              varchar(25) not null,
   CURRENCY             char(1) not null default '0',
   MAIN_FLAG            boolean not null default false,
   ATTR                 char(1) not null default '0',
   OPEN_TIME            bigint not null default 0,
   CLOSE_TIME           bigint not null default 0,
   CAP_STATUS           char(1) not null default '0',
   primary key (CAP_CODE)
);

alter table CAP_ACCT comment '用于存放资金账户的信息（存放开户信息的一部分），一个客户账户可拥有至少一个资金账户';

/*==============================================================*/
/* Table: CUST_ACCT                                             */
/*==============================================================*/
create table CUST_ACCT
(
   CUST_CODE            varchar(12) not null comment '前4位为营业网点编号',
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
   primary key (CUST_CODE)
);

alter table CUST_ACCT comment '用于存放客户账户的信息（存放开户信息的一部分），一个客户只有一个客户账户';

/*==============================================================*/
/* Table: DEP_ACCT                                              */
/*==============================================================*/
create table DEP_ACCT
(
   DEP_CODE             varchar(12) not null,
   BANK_TYPE            char(2) not null default '0' comment '0 中国工商银行
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

alter table DEP_ACCT comment '用于存放存管账户的信息（存放开户信息的一部分），一个资金账户对应一个存管账户';

/*==============================================================*/
/* Table: EMPLOYEE                                              */
/*==============================================================*/
create table EMPLOYEE
(
   EMPLOYEE_CODE        varchar(12) not null,
   POS_CODE             int not null,
   EMPLOYEE_PWD         varchar(25) not null,
   EMPLOYEE_NAME        varchar(15) not null,
   ID_CODE              varchar(20) not null,
   TELEPHONE            bigint(11) not null,
   EMAIL                varchar(30) not null,
   ADDRESS              varchar(50) not null,
   EMPLOYEE_STATUS      char(1) not null default '0',
   primary key (EMPLOYEE_CODE)
);

alter table EMPLOYEE comment '用于存放员工信息';

/*==============================================================*/
/* Table: IMAGE                                                 */
/*==============================================================*/
create table IMAGE
(
   IMG_CODE             int not null auto_increment,
   ID_FRONT             varchar(50) not null,
   ID_BACK              varchar(50) not null,
   FACE                 varchar(50) not null,
   primary key (IMG_CODE)
);

alter table IMAGE comment '用于存放影像资料的url';

/*==============================================================*/
/* Table: MAIN_DATA_DICT                                        */
/*==============================================================*/
create table MAIN_DATA_DICT
(
   MAIN_CODE            int not null auto_increment,
   COL_NAME             varchar(10) not null,
   COL_CODE             varchar(20) not null,
   TAB_CODE             varchar(20) not null,
   primary key (MAIN_CODE)
);

alter table MAIN_DATA_DICT comment '用于存放数据字典主表信息';

/*==============================================================*/
/* Table: OPERA_LOG                                             */
/*==============================================================*/
create table OPERA_LOG
(
   LOG_CODE             int not null auto_increment comment '自增',
   EMPLOYEE_CODE        varchar(12) not null,
   LOG_TIME             bigint not null default 0,
   OPERATED_OBJ         varchar(12) not null comment '受操作影响的人员账号，例如岗位变更，权限修改等
            如果不存在，默认为""',
   OPERATION            char(2) not null default '0' comment '
            ',
   DESCRIPTION          varchar(30) not null comment '描述详细的操作，包括操作的内容，如修改了什么信息',
   primary key (LOG_CODE)
);

alter table OPERA_LOG comment '记录员工操作流水';

/*==============================================================*/
/* Table: ORGANIZATION                                          */
/*==============================================================*/
create table ORGANIZATION
(
   ORG_CODE             varchar(4) not null,
   ORG_NAME             varchar(20) not null,
   ORG_ADDR             varchar(40) not null,
   ORG_TEL              bigint(11) not null,
   primary key (ORG_CODE)
);

alter table ORGANIZATION comment '用于存放营业网点信息';

/*==============================================================*/
/* Table: POSITION                                              */
/*==============================================================*/
create table POSITION
(
   POS_CODE             int not null auto_increment,
   POSITION             char(1) not null default '0',
   OPERATION            char(2) not null default '0',
   primary key (POS_CODE)
);

alter table POSITION comment '用于记录不同岗位可执行的操作列表';

/*==============================================================*/
/* Table: SUB_DATA_DICT                                         */
/*==============================================================*/
create table SUB_DATA_DICT
(
   SUB_CODE             int not null auto_increment,
   MAIN_CODE            int not null,
   VALUE_CODE           varchar(2) not null,
   VALUE                varchar(10) not null,
   primary key (SUB_CODE)
);

alter table SUB_DATA_DICT comment '用于存放数据字典子表的信息';

/*==============================================================*/
/* Table: SYS_PARA                                              */
/*==============================================================*/
create table SYS_PARA
(
   PARA_CODE            int not null auto_increment comment '自增',
   PARA_NAME            varchar(20) not null,
   PARA_VALUE           varchar(20) not null,
   primary key (PARA_CODE)
);

alter table SYS_PARA comment '用于存放系统参数信息';

/*==============================================================*/
/* Table: TRD_ACCT                                              */
/*==============================================================*/
create table TRD_ACCT
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

alter table TRD_ACCT comment '用于存放证券账户的信息，一个客户账户对应多个证券账户';

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USER_CODE            int not null auto_increment,
   INFO_CODE            int not null,
   CUST_CODE            varchar(12) not null comment '前4位为营业网点编号',
   TELEPHONE            bigint(11) not null default 0,
   PASSWORD             varchar(25) not null,
   primary key (USER_CODE)
);

alter table USER comment '用于存放用户信息，一个用户仅对应一个客户账户';

alter table ACCT_OPEN_INFO add constraint FK_Reference_3 foreign key (IMG_CODE)
      references IMAGE (IMG_CODE) on delete restrict on update restrict;

alter table CAP_ACCT add constraint FK_Reference_12 foreign key (ORG_CODE)
      references ORGANIZATION (ORG_CODE) on delete restrict on update restrict;

alter table CAP_ACCT add constraint FK_Reference_7 foreign key (CUST_CODE)
      references CUST_ACCT (CUST_CODE) on delete restrict on update restrict;

alter table CAP_ACCT add constraint FK_Reference_8 foreign key (DEP_CODE)
      references DEP_ACCT (DEP_CODE) on delete restrict on update restrict;

alter table CUST_ACCT add constraint FK_Reference_4 foreign key (IMG_CODE)
      references IMAGE (IMG_CODE) on delete restrict on update restrict;

alter table CUST_ACCT add constraint FK_Reference_5 foreign key (ORG_CODE)
      references ORGANIZATION (ORG_CODE) on delete restrict on update restrict;

alter table EMPLOYEE add constraint FK_Reference_11 foreign key (POS_CODE)
      references POSITION (POS_CODE) on delete restrict on update restrict;

alter table OPERA_LOG add constraint FK_Reference_10 foreign key (EMPLOYEE_CODE)
      references EMPLOYEE (EMPLOYEE_CODE) on delete restrict on update restrict;

alter table SUB_DATA_DICT add constraint FK_Reference_6 foreign key (MAIN_CODE)
      references MAIN_DATA_DICT (MAIN_CODE) on delete restrict on update restrict;

alter table TRD_ACCT add constraint FK_Reference_9 foreign key (CUST_CODE)
      references CUST_ACCT (CUST_CODE) on delete restrict on update restrict;

alter table USER add constraint FK_Reference_1 foreign key (INFO_CODE)
      references ACCT_OPEN_INFO (INFO_CODE) on delete restrict on update restrict;

alter table USER add constraint FK_Reference_2 foreign key (CUST_CODE)
      references CUST_ACCT (CUST_CODE) on delete restrict on update restrict;

