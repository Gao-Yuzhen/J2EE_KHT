﻿/* ===================================== */
/* 清除表格原有数据                      */
/* ===================================== */

delete from DEP_ACCT;

delete from CAP_ACCT;

delete from TRD_ACCT;

delete from CUST_ACCT;

delete from ACCT_OPEN_INFO;

delete from IMAGE;

delete from ORGANIZATION;

delete from OPERA_LOG;

delete from EMPLOYEE;

delete from USER;

delete from POSITION;

delete from SUB_DATA_DICT;

delete from MAIN_DATA_DICT;

delete from SYS_PARA;

/* ===================================== */
/* 插入默认数据                          */
/* ===================================== */

/*
insert into IMAGE values
(
   0, 
   "", 
   "", 
   ""
);

insert into ORGANIZATION values
(
   "", 
   "", 
   "", 
   0
);

insert into ACCT_OPEN_INFO values
(
   0, 
   1, 
   "", 
   '0', 
   '0', 
   "", 
   0, 
   0, 
   0, 
   "", 
   "", 
   "", 
   "", 
   '0', 
   "", 
   'A', 
   'A', 
   'A', 
   'A', 
   'A', 
   'A', 
   'A', 
   'A', 
   'A', 
   'A', 
   '0',
   "", 
   '0',
   0,  
   '0'
);

insert into CUST_ACCT values
(
   "", 
   1, 
   "", 
   "", 
   '0', 
   '0', 
   "", 
   0, 
   0, 
   0, 
   "", 
   "", 
   "", 
   "", 
   '0', 
   '0', 
   0, 
   0, 
   '0'
);

insert into USER values
(
   0, 
   1, 
   "", 
   0, 
   ""
);

insert into DEP_ACCT values
(
   "", 
   "00", 
   "", 
   0, 
   0, 
   '0'
);

insert into CAP_ACCT values
(
   "", 
   "", 
   "", 
   "", 
   "", 
   '0',
   false, 
   '0', 
   0, 
   0, 
   '0'
);

insert into TRD_ACCT values
(
   "", 
   "", 
   '0', 
   "00", 
   '0', 
   '0', 
   0, 
   0, 
   '0'
);

insert into POSITION values
(
   0, 
   '0', 
   '0'
);

insert into EMPLOYEE values
(
   "", 
   1, 
   "", 
   "", 
   "", 
   0, 
   "", 
   "", 
   '0'
);

insert into OPERA_LOG values
(
   0, 
   "",
   0, 
   "", 
   "00", 
   ""
);
*/

/* ================================== */
/* 初始化数据字典信息                 */
/* ================================== */
insert into MAIN_DATA_DICT values
(
   0, 
   "性别", 
   "GENDER", 
   "ACCT_OPEN_INFO"
),
(
   0,
   "证件类型",
   "ID_TYPE",
   "ACCT_OPEN_INFO"
),
(
   0,
   "学历",
   "EDUCATION",
   "ACCT_OPEN_INFO"
),
(
   0,
   "银行类型",
   "BANK_TYPE",
   "ACCT_OPEN_INFO"
),
(
   0,
   "开户渠道",
   "OPEN_CHANNEL",
   "ACCT_OPEN_INFO"
),
(
   0,
   "状态",
   "INFO_STATUS",
   "ACCT_OPEN_INFO"
),
(
   0,
   "性别",
   "GENDER",
   "CUST_ACCT"
),
(
   0,
   "证件类型",
   "ID_TYPE",
   "CUST_ACCT"
),
(
   0,
   "学历",
   "EDUCATION",
   "CUST_ACCT"
),
(
   0,
   "投资者类型",
   "INVESTOR_TYPE",
   "CUST_ACCT"
),
(
   0,
   "状态",
   "CUST_ACCT",
   "CUST_ACCT"
),
(
   0,
   "银行类型",
   "BANK_TYPE",
   "DEP_ACCT"
),
(
   0,
   "状态",
   "DEP_STATUS",
   "DEP_ACCT"
),
(
   0,
   "币种",
   "CURRENCY",
   "CAP_ACCT"
),
(
   0,
   "属性",
   "ATTR",
   "CAP_ACCT"
),
(
   0,
   "状态",
   "CAP_STATUS",
   "CAP_ACCT"
),
(
   0,
   "岗位",
   "POSITION",
   "POSITION"
),
(
   0,
   "操作",
   "OPERATION",
   "POSITION"
),
(
   0,
   "岗位",
   "POSITION",
   "EMPLOYEE"
),
(
   0,
   "员工状态",
   "EMPLOYEE_STATUS",
   "EMPLOYEE"
),
(
   0,
   "操作",
   "OPERATION",
   "OPERA_LOG"
)
;


insert into SUB_DATA_DICT values
(
   0, 
   1, 
   "0", 
   "男"
),
(
   0, 
   1, 
   "1", 
   "女"
),
(
   0, 
   2, 
   "0", 
   "居民身份证"
),
(
   0, 
   2, 
   "1", 
   "营业执照"
),
(
   0, 
   3, 
   "0", 
   "中学以下"
),
(
   0, 
   3, 
   "1", 
   "初中"
),
(
   0, 
   3, 
   "2", 
   "高中"
),
(
   0, 
   3, 
   "3", 
   "专科"
),
(
   0, 
   3, 
   "4", 
   "本科"
),
(
   0, 
   3, 
   "5", 
   "研究生"
),
(
   0, 
   4, 
   "00", 
   "中国工商银行"
),
(
   0, 
   4, 
   "01", 
   "中国农业银行"
),
(
   0, 
   4, 
   "02", 
   "中国银行"
),
(
   0, 
   4, 
   "03", 
   "中国建设银行"
),
(
   0, 
   4, 
   "04", 
   "中国光大银行"
),
(
   0, 
   4, 
   "05", 
   "中国民生银行"
),
(
   0, 
   4, 
   "06", 
   "招商银行"
),
(
   0, 
   4, 
   "07", 
   "华夏银行"
),
(
   0, 
   4, 
   "08", 
   "交通银行"
),
(
   0, 
   4, 
   "09", 
   "兴业银行"
),
(
   0, 
   4, 
   "10", 
   "恒丰银行"
),
(
   0, 
   4, 
   "11", 
   "中信银行"
),
(
   0, 
   4, 
   "12", 
   "上海浦东发展银行"
),
(
   0, 
   4, 
   "13", 
   "广东发展银行"
),
(
   0, 
   4, 
   "14", 
   "深圳发展银行"
),
(
   0, 
   5, 
   "0", 
   "PC端"
),
(
   0, 
   5, 
   "1", 
   "手机端"
),
(
   0, 
   6, 
   "0", 
   "待审核"
),
(
   0, 
   6, 
   "1", 
   "审核通过"
),
(
   0, 
   6, 
   "2", 
   "审核不通过"
),
(
   0, 
   7, 
   "0", 
   "男"
),
(
   0, 
   7, 
   "1", 
   "女"
),
(
   0, 
   8, 
   "0", 
   "居民身份证"
),
(
   0, 
   8, 
   "1", 
   "营业执照"
),
(
   0, 
   9, 
   "0", 
   "中学以下"
),
(
   0, 
   9, 
   "1", 
   "初中"
),
(
   0, 
   9, 
   "2", 
   "高中"
),
(
   0, 
   9, 
   "3", 
   "专科"
),
(
   0, 
   9, 
   "4", 
   "本科"
),
(
   0, 
   9, 
   "5", 
   "研究生"
),
(
   0, 
   10, 
   "0", 
   "保守"
),
(
   0, 
   10, 
   "1", 
   "稳健"
),
(
   0, 
   10, 
   "2", 
   "激进"
),
(
   0, 
   11, 
   "0", 
   "正常"
),
(
   0, 
   11, 
   "1", 
   "冻结"
),
(
   0, 
   11, 
   "2", 
   "销户"
),
(
   0, 
   12, 
   "00", 
   "中国工商银行"
),
(
   0, 
   12, 
   "01", 
   "中国农业银行"
),
(
   0, 
   12, 
   "02", 
   "中国银行"
),
(
   0, 
   12, 
   "03", 
   "中国建设银行"
),
(
   0, 
   12, 
   "04", 
   "中国光大银行"
),
(
   0, 
   12, 
   "05", 
   "中国民生银行"
),
(
   0, 
   12, 
   "06", 
   "招商银行"
),
(
   0, 
   12, 
   "07", 
   "华夏银行"
),
(
   0, 
   12, 
   "08", 
   "交通银行"
),
(
   0, 
   12, 
   "09", 
   "兴业银行"
),
(
   0, 
   12, 
   "10", 
   "恒丰银行"
),
(
   0, 
   12, 
   "11", 
   "中信银行"
),
(
   0, 
   12, 
   "12", 
   "上海浦东发展银行"
),
(
   0, 
   12, 
   "13", 
   "广东发展银行"
),
(
   0, 
   12, 
   "14", 
   "深圳发展银行"
),
(
   0, 
   13, 
   "0", 
   "正常"
),
(
   0, 
   13, 
   "1", 
   "冻结"
),
(
   0, 
   13, 
   "2", 
   "销户"
),
(
   0, 
   14, 
   "0", 
   "人民币"
),
(
   0, 
   15, 
   "0", 
   "普通账户"
),
(
   0, 
   15, 
   "1", 
   "信用账户"
),
(
   0, 
   16, 
   "0", 
   "正常"
),
(
   0, 
   16, 
   "1", 
   "冻结"
),
(
   0, 
   16, 
   "2", 
   "销户"
),
(
   0, 
   17, 
   "0", 
   "审核员LV1"
),
(
   0, 
   17, 
   "1", 
   "审核员LV2"
),
(
   0, 
   17, 
   "2", 
   "审核员LV3"
),
(
   0, 
   17, 
   "3", 
   "管理员LV1"
),
(
   0, 
   17, 
   "4", 
   "管理员LV2"
),
(
   0, 
   17, 
   "5", 
   "管理员LV3"
),
(
   0, 
   17, 
   "6", 
   "超级管理员"
),
(
   0, 
   18, 
   "00", 
   "查看个人信息"
),
(
   0, 
   18, 
   "01", 
   "修改个人信息"
),
(
   0, 
   18, 
   "02", 
   "查看用户信息"
),
(
   0,
   18,
   "03",
   "修改用户信息"
),
(
   0,
   18,
   "04",
   "查看员工信息"
),
(
   0,
   18,
   "05",
   "修改员工信息"
),
(
   0,
   18,
   "06",
   "查看待审核资料"
),
(
   0,
   18,
   "07",
   "提交审核结果"
),
(
   0,
   18,
   "08",
   "查看系统参数"
),
(
   0,
   18,
   "09",
   "修改系统参数"
),
(
   0,
   18,
   "10",
   "查看数据字典信息"
),
(
   0,
   18,
   "11",
   "添加数据字典信息"
),
(
   0,
   18,
   "12",
   "修改数据字典信息"
),
(
   0,
   18,
   "13",
   "删除数据字典信息"
),
(
   0,
   18,
   "14",
   "修改员工权限"
),
(
   0,
   18,
   "15",
   "创建员工账户"
),
(
   0,
   18,
   "16",
   "删除员工账户"
),
(
   0, 
   19, 
   "0", 
   "审核员LV1"
),
(
   0, 
   19, 
   "1", 
   "审核员LV2"
),
(
   0, 
   19, 
   "2", 
   "审核员LV3"
),
(
   0, 
   19, 
   "3", 
   "管理员LV1"
),
(
   0, 
   19, 
   "4", 
   "管理员LV2"
),
(
   0, 
   19, 
   "5", 
   "管理员LV3"
),
(
   0, 
   19, 
   "6", 
   "超级管理员"
),
(
   0,
   20,
   "0",
   "在职"
),
(
   0,
   20,
   "1",
   "停职"
),
(
   0,
   20,
   "2",
   "离职"
),
(
   0, 
   21, 
   "00", 
   "查看个人信息"
),
(
   0, 
   21, 
   "01", 
   "修改个人信息"
),
(
   0, 
   21, 
   "02", 
   "查看用户信息"
),
(
   0,
   21,
   "03",
   "修改用户信息"
),
(
   0,
   21,
   "04",
   "查看员工信息"
),
(
   0,
   21,
   "05",
   "修改员工信息"
),
(
   0,
   21,
   "06",
   "查看待审核资料"
),
(
   0,
   21,
   "07",
   "提交审核结果"
),
(
   0,
   21,
   "08",
   "查看系统参数"
),
(
   0,
   21,
   "09",
   "修改系统参数"
),
(
   0,
   21,
   "10",
   "查看数据字典信息"
),
(
   0,
   21,
   "11",
   "添加数据字典信息"
),
(
   0,
   21,
   "12",
   "修改数据字典信息"
),
(
   0,
   21,
   "13",
   "删除数据字典信息"
),
(
   0,
   21,
   "14",
   "修改员工权限"
),
(
   0,
   21,
   "15",
   "创建员工账户"
),
(
   0,
   21,
   "16",
   "删除员工账户"
);

/* =================================== */
/* 插入岗位信息                        */
/* =================================== */

insert into POSITION values
(
   0,
   '0',
   "00"
),
(
   0,
   '0',
   "01"
),
(
   0,
   '0',
   "06"
),
(
   0,
   '0',
   "07"
),
(
   0,
   '1',
   "00"
),
(
   0,
   '1',
   "01"
),
(
   0,
   '1',
   "02"
),
(
   0,
   '1',
   "06"
),
(
   0,
   '1',
   "07"
),
(
   0,
   '2',
   "00"
),
(
   0,
   '2',
   "01"
),
(
   0,
   '2',
   "02"
),
(
   0,
   '2',
   "03"
),
(
   0,
   '2',
   "06"
),
(
   0,
   '2',
   "07"
),
(
   0,
   '3',
   "00"
),
(
   0,
   '3',
   "01"
),
(
   0,
   '3',
   "02"
),
(
   0,
   '3',
   "04"
),
(
   0,
   '3',
   "08"
),
(
   0,
   '3',
   "10"
),
(
   0,
   '4',
   "00"
),
(
   0,
   '4',
   "01"
),
(
   0,
   '4',
   "02"
),
(
   0,
   '4',
   "03"
),
(
   0,
   '4',
   "04"
),
(
   0,
   '4',
   "05"
),
(
   0,
   '4',
   "08"
),
(
   0,
   '4',
   "09"
),
(
   0,
   '4',
   "10"
),
(
   0,
   '4',
   "11"
),
(
   0,
   '4',
   "12"
),
(
   0,
   '4',
   "13"
),
(
   0,
   '5',
   "00"
),
(
   0,
   '5',
   "01"
),
(
   0,
   '5',
   "02"
),
(
   0,
   '5',
   "03"
),
(
   0,
   '5',
   "04"
),
(
   0,
   '5',
   "05"
),
(
   0,
   '5',
   "06"
),
(
   0,
   '5',
   "07"
),
(
   0,
   '5',
   "08"
),
(
   0,
   '5',
   "09"
),
(
   0,
   '5',
   "10"
),
(
   0,
   '5',
   "11"
),
(
   0,
   '5',
   "12"
),
(
   0,
   '5',
   "13"
),
(
   0,
   '5',
   "14"
),
(
   0,
   '6',
   "00"
),
(
   0,
   '6',
   "01"
),
(
   0,
   '6',
   "02"
),
(
   0,
   '6',
   "03"
),
(
   0,
   '6',
   "04"
),
(
   0,
   '6',
   "05"
),
(
   0,
   '6',
   "06"
),
(
   0,
   '6',
   "07"
),
(
   0,
   '6',
   "08"
),
(
   0,
   '6',
   "09"
),
(
   0,
   '6',
   "10"
),
(
   0,
   '6',
   "11"
),
(
   0,
   '6',
   "12"
),
(
   0,
   '6',
   "13"
),
(
   0,
   '6',
   "14"
),
(
   0,
   '6',
   "15"
),
(
   0,
   '6',
   "16"
);

/* =================================== */
/* 插入系统参数                        */
/* =================================== */

/*
insert into SYS_PARA values
(
   0, 
   "", 
   ""
);
*/

