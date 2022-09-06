CREATE TABLE `xxz_user`
(
    `id`                        bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name`                      varchar(50)  DEFAULT NULL COMMENT '姓名',
    `img_url`                   varchar(255) DEFAULT NULL COMMENT '头像',
    `status`                    tinyint(4) DEFAULT 1 COMMENT '1 正常 2异常 3禁封',
    `phone`                     varchar(50)  NOT NULL COMMENT '手机号',
    `birthday`                  varchar(50)  DEFAULT NULL COMMENT '生日',
    `wx`                        varchar(50)  DEFAULT NULL COMMENT '微信号',
    `qq`                        varchar(50)  DEFAULT NULL COMMENT 'qq号',
    `sex`                       tinyint(1) DEFAULT NULL COMMENT '1男 2女',
    `email`                     varchar(255) DEFAULT NULL COMMENT '邮箱',
    `identity_card`             varchar(50)  DEFAULT NULL COMMENT '身份证',
    `identity_card_front_url`   varchar(50)  DEFAULT NULL COMMENT '身份证照正面',
    `identity_card_reverse_url` varchar(50)  DEFAULT NULL COMMENT '身份证照反面',
    `age`                       tinyint(4) DEFAULT NULL COMMENT '年龄',
    `city`                      varchar(50)  NOT NULL COMMENT '所在城市',
    `addr_ip`                   varchar(50)  NOT NULL COMMENT '注册ip',
    `channel`                   tinyint(4) DEFAULT 1 COMMENT '注册渠道 1为ios 2为安卓',
    `deleted`                   tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 否 1 是',
    `created_time`              datetime     NOT NULL COMMENT '创建时间',
    `updated_time`              datetime     DEFAULT NULL COMMENT '更新时间',
    `create_by`                 varchar(255) NOT NULL COMMENT '创建者',
    `version`                   int(8) NOT NULL DEFAULT '1' COMMENT '版本号'
        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9130 DEFAULT CHARSET=utf8mb4 COMMENT='订单日志';


CREATE TABLE `xxz_file`
(
    `id`           bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `file_name`    varchar(255) DEFAULT NULL COMMENT '文件名称',
    `file_url`     varchar(255) DEFAULT NULL COMMENT '文件地址',
    `deleted`      tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 否 1 是',
    `created_time` datetime     NOT NULL COMMENT '创建时间',
    `updated_time` datetime     DEFAULT NULL COMMENT '更新时间',
    `create_by`    varchar(255) NOT NULL COMMENT '创建者',
    `version`      int(8) NOT NULL DEFAULT '1' COMMENT '版本号'
        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='图片文件表';


CREATE TABLE `xxz_company`
(
    `id`                       bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name`                     varchar(255) DEFAULT NULL COMMENT '公司名称',
    `business_scope`           text         DEFAULT NULL COMMENT '企业经营范围',
    `registration_time`        varchar(50)  DEFAULT NULL COMMENT '企业成立时间',
    `registration_addr`        varchar(255) DEFAULT NULL COMMENT '注册地址',
    `longitude`                varchar(255) DEFAULT NULL COMMENT '进度',
    `latitude`                 varchar(255) DEFAULT NULL COMMENT '纬度',
    `status`                   tinyint(1) DEFAULT NULL COMMENT '经营状态',
    `code`                     varchar(255) DEFAULT NULL COMMENT '公司编码',
    `credit_code`              varchar(255) DEFAULT NULL COMMENT '信用编码',
    `organization_code`        varchar(255) DEFAULT NULL COMMENT '组织机构代码',
    `business_url`             varchar(255) DEFAULT NULL COMMENT '营业执照',
    `legal_person`             varchar(50)  DEFAULT NULL COMMENT '法人',
    `identity card`            varchar(50)  DEFAULT NULL COMMENT '身份证',
    `legal_person_card`        varchar(50)  DEFAULT NULL COMMENT '法人身份证',
    `legal_person_front_url`   varchar(255) DEFAULT NULL COMMENT '法人照片正面',
    `legal_person_reverse_url` varchar(255) DEFAULT NULL COMMENT '法人照片反面',
    `legal_person_phone`       varchar(50)  DEFAULT NULL COMMENT '法人手机号',
    `company_logo`             varchar(255) DEFAULT NULL COMMENT 'logo',
    `authorization_url`        varchar(255) DEFAULT NULL COMMENT '授权书',
    `audit`                    tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态 0 待审核 1 审核中 2审核成功 3审核失败',
    `remark`                   varchar(500) DEFAULT NULL COMMENT '备注',
    `deleted`                  tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 否 1 是',
    `created_time`             datetime     NOT NULL COMMENT '创建时间',
    `updated_time`             datetime     DEFAULT NULL COMMENT '更新时间',
    `create_by`                varchar(255) NOT NULL COMMENT '创建者',
    `version`                  int(8) NOT NULL DEFAULT '1' COMMENT '版本号'
        PRIMARY KEY (`id`) USING BTREE,
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='商家表';


CREATE TABLE `c_job_type`
(
    `id`           bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name`         varchar(50) NOT NULL COMMENT '岗位类型名称',
    `sort`         tinyint(10) DEFAULT 100 COMMENT '排序',
    `deleted`      tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 否 1 是',
    `created_time` datetime    NOT NULL COMMENT '创建时间',
    `updated_time` datetime             DEFAULT NULL COMMENT '更新时间',
    `create_by_id` bigint(20) NOT NULL DEFAULT '-1' COMMENT '创建者id',
    `create_by`    varchar(50) NOT NULL COMMENT '创建者',
    `update_by_id` bigint(20) DEFAULT NULL COMMENT '修改者id',
    `update_by`    varchar(50)          DEFAULT NULL COMMENT '修改者',
    `version`      int(8) NOT NULL DEFAULT '1' COMMENT '版本号',
    `cdc_crt_time` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录新增时间',
    `cdc_upd_time` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='岗位类型表';