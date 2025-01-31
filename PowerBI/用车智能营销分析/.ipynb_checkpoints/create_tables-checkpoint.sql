-- 创建车车数据库
CREATE SCHEMA `cars_analysis` DEFAULT CHARACTER SET utf8 ;
-- 使用数据库
use cars_analysis;

-- 创建车车数据系统-车型映射数据表
CREATE TABLE IF NOT EXISTS `car_type_data` (
  `car_type_id` int(11) DEFAULT NULL COMMENT '车型ID',
  `car_type_name` varchar(400) DEFAULT NULL COMMENT '车型名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-车型映射数据';

-- 创建车车数据系统-城市映射数据表
CREATE TABLE IF NOT EXISTS `city_data` (
  `city_code` varchar(400) DEFAULT NULL COMMENT '城市code',
  `city_name` varchar(400) DEFAULT NULL COMMENT '城市名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-城市映射数据';

-- 创建车车数据系统-商品上下线数据表
CREATE TABLE IF NOT EXISTS `goods_upper_and_lower_data` (
  `id` int(11) DEFAULT NULL COMMENT '自增主键id',
  `ota_id` varchar(400) DEFAULT NULL COMMENT 'ota供应商id',
  `ota_name` varchar(400) DEFAULT NULL COMMENT 'ota供应商名称',
  `service_type_simple` varchar(400) DEFAULT NULL COMMENT '业务类型（简化的），1 接送机 3城市交通 4 接送站，等',
  `city_code` varchar(400) DEFAULT NULL COMMENT '城市code',
  `city_name` varchar(400) DEFAULT NULL COMMENT '城市名称',
  `stat_date` varchar(400) DEFAULT NULL COMMENT '统计日期',
  `punish_score` double DEFAULT NULL COMMENT '罚分分值',
  `sum_punish_score` double DEFAULT NULL COMMENT '总罚分分值（过去若干天内 已恢复 状态的罚分值，一般为30天，含当天）',
  `hidden_start_time` varchar(400) DEFAULT NULL COMMENT '屏蔽（下线）开始时间，含该时刻',
  `hidden_end_time` varchar(400) DEFAULT NULL COMMENT '屏蔽（下线）结束时间，不含该时刻',
  `earliest_recoverable_time` varchar(400) DEFAULT NULL COMMENT '最早可恢复（上线）时间',
  `hidden_status` int(11) DEFAULT NULL COMMENT '屏蔽记录的状态，1已生效，2已取消，3已恢复。生效时，还需配合屏蔽起止时间、屏蔽时段判断当前是否屏蔽',
  `hidden_period_json` varchar(400) DEFAULT NULL COMMENT '若干屏蔽时段，如[{"hiddenPeriodBegin":"2019-05-17 00:00:00"，"hiddenPeriodEnd":"2019-05-17 08:00:00"}，{"hiddenPeriodBegin":"2019-05-18 00:00:00"，"hiddenPeriodEnd":"2019-05-18 13:00:00"}，{"hiddenPeriodBegin":"2019-05-19 00:00:00"，"hiddenPeriodEnd":"2099-01-01 00:00:',
  `hidden_period_desc` varchar(400) DEFAULT NULL COMMENT '若干屏蔽时段 文本描述，用于生成报表时提取。如：2019-05-17 00:00至2019-05-17 08:00；2019-05-18 00:00至2019-05-18 13:00；',
  `hidden_reason` varchar(400) DEFAULT NULL COMMENT '屏蔽原因',
  `create_time` varchar(400) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(400) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-商品上下线数据';

-- 创建车车数据系统-订单基础数据表
CREATE TABLE IF NOT EXISTS `order_basic_data` (
  `trade_order_id` varchar(400) DEFAULT NULL COMMENT '交易订单号',
  `uid` varchar(400) DEFAULT NULL COMMENT '用户标识',
  `gid` varchar(400) DEFAULT NULL COMMENT '用户设备号',
  `passenger_phone` varchar(400) DEFAULT NULL COMMENT '乘客手机',
  `platform` varchar(400) DEFAULT NULL COMMENT '下单平台',
  `service_type` int(11) DEFAULT NULL COMMENT '服务类型ID',
  `service_type_name` varchar(400) DEFAULT NULL COMMENT '服务类型名称',
  `order_status` int(11) DEFAULT NULL COMMENT '订单状态ID',
  `order_status_name` varchar(400) DEFAULT NULL COMMENT '订单状态名称',
  `order_day` varchar(400) DEFAULT NULL COMMENT '下单日期',
  `book_day` varchar(400) DEFAULT NULL COMMENT '用车日期',
  `order_car_type_id` int(11) DEFAULT NULL COMMENT '下单车型id',
  `order_car_type_name` varchar(400) DEFAULT NULL COMMENT '下单车型name',
  `order_order_class_id` int(11) DEFAULT NULL COMMENT '下单订单分类ID',
  `order_order_class_name` varchar(400) DEFAULT NULL COMMENT '下单订单分类名称',
  `city_code` varchar(400) DEFAULT NULL COMMENT '城市code',
  `city_name` varchar(400) DEFAULT NULL COMMENT '城市名称',
  `channel_id` int(11) DEFAULT NULL COMMENT '平台ID',
  `channel_name` varchar(400) DEFAULT NULL COMMENT '平台名称',
  `first_taken_driver_taken_type` varchar(400) DEFAULT NULL COMMENT '首次接单车型ID',
  `first_taken_driver_taken_type_name` varchar(400) DEFAULT NULL COMMENT '首次接单车型名称',
  `source_type` int(11) DEFAULT NULL COMMENT '订单来源',
  `source_type_name` varchar(400) DEFAULT NULL COMMENT '订单来源名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-订单基础数据';

-- 创建车车数据系统-平台ID映射数据表
CREATE TABLE IF NOT EXISTS `order_channel_data` (
  `channel_id` int(11) DEFAULT NULL COMMENT '平台ID',
  `channel_name` varchar(400) DEFAULT NULL COMMENT '平台名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-平台ID映射数据';

-- 创建车车数据系统-订单分类映射数据表
CREATE TABLE IF NOT EXISTS `order_class_data` (
  `order_class_id` int(11) DEFAULT NULL COMMENT '订单分类',
  `order_class_name` varchar(400) DEFAULT NULL COMMENT '订单分类名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-订单分类映射数据';

-- 创建车车数据系统-服务类型映射数据表
CREATE TABLE IF NOT EXISTS `order_service_type_data` (
  `service_type` int(11) DEFAULT NULL COMMENT '服务类型ID',
  `service_type_name` varchar(400) DEFAULT NULL COMMENT '服务类型名称',
  `service_type_total_name` varchar(400) DEFAULT NULL COMMENT '服务类型汇总名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-服务类型映射数据';

-- 创建车车数据系统-下单来源映射数据表
CREATE TABLE IF NOT EXISTS `order_source_type_data` (
  `source_type` int(11) DEFAULT NULL COMMENT '订单来源',
  `source_type_name` varchar(400) DEFAULT NULL COMMENT '订单来源名称',
  `order_fisrt_word` varchar(400) DEFAULT NULL COMMENT '订单号前缀'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-下单来源映射数据';

-- 创建车车数据系统-接单类型映射数据表
CREATE TABLE IF NOT EXISTS `order_taken_type_data` (
  `taken_type` int(11) DEFAULT NULL COMMENT '接单类型',
  `taken_type_name` varchar(400) DEFAULT NULL COMMENT '接单类型名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-接单类型映射数据';

-- 创建车车数据系统-用车分层数据表
CREATE TABLE IF NOT EXISTS `user_layer_data` (
  `s_orderid` varchar(400) DEFAULT NULL COMMENT '订单号',
  `s_uid` varchar(400) DEFAULT NULL COMMENT '用户唯一标识',
  `s_createtime` varchar(400) DEFAULT NULL COMMENT '下单时间',
  `t_usermobile` varchar(400) DEFAULT NULL COMMENT '用户手机号',
  `s_orderdate` varchar(400) DEFAULT NULL COMMENT '预定日期',
  `s_usecity` varchar(400) DEFAULT NULL COMMENT '用车城市名称',
  `s_vendername` varchar(400) DEFAULT NULL COMMENT '供应商名称',
  `d_orderstatus` int(11) DEFAULT NULL COMMENT '动态表订单状态',
  `t_driverstatus` int(11) DEFAULT NULL COMMENT '司机状态,用来判断完成单 是否已推送账单',
  `t_driverid` varchar(400) DEFAULT NULL COMMENT '供应商司机ID',
  `t_driverconfirmtime` varchar(400) DEFAULT NULL COMMENT '司机接单时间',
  `s_usedate` varchar(400) DEFAULT NULL COMMENT '用车日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车车数据系统-用车分层数据';