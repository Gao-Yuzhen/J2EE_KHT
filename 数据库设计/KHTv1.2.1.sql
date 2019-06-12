/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/12/周三 21:00:31                        */
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
   employee_id          varchar(10) not null comment '首字符为''E''其余字符为数字的字符串，最大长度不大于10位字符
            示例：E666666666',
   employee_pwd         varchar(16),
   name                 varchar(30) not null,
   identity_number      varchar(20) not null,
   telephone            bigint(11) not null,
   email                varchar(30) not null,
   address              varchar(50) not null,
   position             int not null default 0 comment '0 管理员
            1 审核员
            ',
   authority            int not null default 0 comment '0 无权限
            1 查看权限
            2 审核权限
            3 系统参数修改权限
            4 员工管理权限',
   employee_state       int not null default 0 comment '0 在职
            1 停职
            2 离职',
   primary key (employee_id)
);

alter table Employee comment '用于存放员工信息';

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

alter table capital_account comment '用于存放资金账户的信息（存放开户信息的一部分），一个客户账户可拥有至少一个资金账户';

/*==============================================================*/
/* Table: customer_account                                      */
/*==============================================================*/
create table customer_account
(
   customer_id          varchar(10) not null comment '首字符为''C''其余字符为数字的字符串，最大长度不大于10位字符
            示例：C666666666',
   name                 varchar(30) not null,
   certificate_type     int not null default 0 comment '0 身份证
            1 营业执照',
   certificate_id       varchar(20) not null,
   address              varchar(50) not null,
   job                  varchar(20) not null,
   education            int not null default 0 comment '0 小学
            1 初中
            2 高中
            3 专科
            4 本科
            5 研究生
            7 其它',
   email                varchar(30) not null,
   organization_id      varchar(10) not null default '0',
   image_1              varchar(50) not null,
   image_2              varchar(50) not null,
   face_image           varchar(50) not null,
   investor_type        int not null default 0 comment '0 普通
            1 保守
            2 激进',
   commit_time          bigint not null default 0,
   state                int not null default 0 comment '0 待审核
            1 审核通过
            2 审核未通过',
   primary key (customer_id)
);

alter table customer_account comment '用于存放客户账户的信息（存放开户信息的一部分），一个客户只有一个客户账户';

/*==============================================================*/
/* Table: depository_account                                    */
/*==============================================================*/
create table depository_account
(
   depository_id        varchar(10) not null,
   bank_type            int not null default 0 comment '0 中国工商银行
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
   bank_card_number     varchar(20) not null,
   primary key (depository_id)
);

alter table depository_account comment '用于存放存管账户的信息（存放开户信息的一部分），一个资金账户对应一个存管账户';

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   id                   int not null auto_increment,
   authority            int not null default 0 comment '0 无权限
            1 查看权限
            2 审核权限
            3 系统参数修改权限
            4 员工管理权限',
   operation            int not null default 0 comment '0 登录
            1 查看
            2 审核
            3 查询统计
            4 修改系统参数
            5.修改员工权限
            6 修改员工信息
            ',
   primary key (id)
);

alter table menu comment '用于记录不同权限可执行的操作列表';

/*==============================================================*/
/* Table: operation_log                                         */
/*==============================================================*/
create table operation_log
(
   id                   int not null auto_increment,
   time                 bigint not null default 0,
   employee_id          varchar(10) not null comment '执行操作的员工的账号',
   operated_personnel   varchar(10) not null comment '受操作影响的人员账号，例如岗位变更，权限修改等
            如果不存在，默认为""',
   operation            int not null default 0 comment '0 登录
            1 查看
            2 审核
            3 查询统计
            4 修改系统参数
            5.修改员工权限
            6 修改员工信息
            ',
   description          varchar(30) not null comment '描述详细的操作，包括操作的内容，如修改了什么信息',
   primary key (id)
);

alter table operation_log comment '记录员工操作流水';

/*==============================================================*/
/* Table: organization                                          */
/*==============================================================*/
create table organization
(
   organization_id      varchar(10) not null comment '首字符为''O''其余字符为数字的字符串，最大长度不大于10位字符
            示例：O666666666',
   organizatin_name     varchar(20) not null,
   organization_address varchar(50) not null,
   telephone            bigint(11) not null,
   primary key (organization_id)
);

alter table organization comment '用于存放机构信息';

/*==============================================================*/
/* Table: securities_account                                    */
/*==============================================================*/
create table securities_account
(
   securities_id        varchar(10) not null,
   customer_id          varchar(10) not null,
   securities_type      int comment '0 上海证券账户
            1 深圳证券账户',
   primary key (securities_id)
);

alter table securities_account comment '用于存放证券账户的信息，一个客户账户对应多个证券账户';

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

alter table user comment '用于存放用户信息，一个用户仅对应一个客户账户';

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

