drop table t_admin;
drop table t_applyUser;
drop table t_bill;
drop table t_card;
drop table t_credit;
drop table t_log;
drop table t_trade;
drop table t_user;

 --管理员表
create table t_admin
(
	id Integer primary key,
	username varchar2(20),
	password varchar2(20),
	securityCode varchar2(10), --安全代码，即管理员等级
	partyName varchar2(20) --所属部门的名称
);

alter table t_admin add email varchar2(100) not null;

--申请用户的表单
create table t_applyUser
(
	id Integer primary key,
	applyDate date, --申请日期
	applyLevel varchar2(10), --申请等级
	applyState varchar2(10), --申请状态
	userId Integer,  --申请人
	adminId Integer, --审批人(管理员)
	remark varchar2(200)
);

alter table t_applyUser add email varchar2(100) not null;

--账单表
create table t_bill
(
	id Integer primary key,
	sn varchar2(40), --第XX期，一般用月份来表示，如2007-06
	amount Float, --账单总额
	payoff Integer  --是否付清
);

--信用卡表
create table t_card
(
	id Integer primary key,
	cardNo varchar2(20) unique, --卡号，由程序根据某种规则进行分配
	creditLevel varchar2(40), --信用等级
	balance Float, --余额（消费总额），如果余额为负数，表示卡内有存款
	password varchar2(20), --卡密
	cardState varchar2(10), --卡状态：正常、冻结、挂失
	createTime date, --开户日期
	successret Integer, --成功还钱次数 
	userId Integer, --所有者
	adminId Integer,
	remark varchar2(200)
);


--信用等级
create table t_credit
(
	creditLevel varchar2(40) primary key, --金卡、银卡、优质卡、普通卡
	maxMoney Float, --最大透支金额
	billDate Integer, --还款期限,账单日,如每月5号
	payDate Integer, --还款期限,还款日，如每月25号
	interestRate Float, --超期利率,还款金额的5％，最低10元
	remark varchar2(200)
);

--日志表
create table t_log
(
	id Integer primary key,
	type varchar2(20), --日志类型
	operTime date,  --操作时间
	addr varchar2(20), --操作地点
	adminName varchar2(20),--操作员姓名
	remark varchar2(200) 
);

--交易表
create table t_trade
(
	id Integer primary key,
	type varchar2(10), --交易类型：消费、还款
	tradeTime date, --交易时间
	tradeAddress varchar2(100), --交易地点
	amount Float, --交易金额
	cardId Integer,
	adminId Integer,
	remark varchar2(200)
);

create table t_user
(
	id Integer primary key,
	name varchar2(20), --用户姓名
	password varchar2(20), --用户密码
	idCardNo varchar2(20), --身份证号码
	sex varchar2(4), --性别
	birthday varchar2(20), --生日
	phone varchar2(12), --联系电话
	hasCard varchar2(10), --是否持卡
	homeAddress varchar2(200), --家庭地址
	mailbox varchar2(200), --邮箱
	company varchar2(50), --工作单位
	salary Float, --月收入
	workingAddress varchar2(200), --工作地址
	workingPhone varchar2(12), --工作电话
	post varchar2(20),  --职位
	remark varchar2(200)
);
