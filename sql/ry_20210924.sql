CREATE TABLE `xxz_user`
(
    `id`                    bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name`                  varchar(50)  NOT NULL COMMENT '姓名',
    `img_url`               varchar(255) NOT NULL COMMENT '头像',
    `operate_detail`        varchar(500) DEFAULT NULL COMMENT '操作详情',
    `before_operate_detail` longtext COMMENT '操作前详情',
    `after_operate_detail`  longtext COMMENT '操作后详情',
    `tenant_id`             varchar(50)  NOT NULL COMMENT '最上层组织机构ID  例如：富春、韩泰等',
    `deleted`               tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 否 1 是',
    `created_time`          datetime     NOT NULL COMMENT '创建时间',
    `updated_time`          datetime     DEFAULT NULL COMMENT '更新时间',
    `create_by`             varchar(255) NOT NULL COMMENT '创建者',
    `version`               int(8) NOT NULL DEFAULT '1' COMMENT '版本号'
        PRIMARY KEY (`id`),
    KEY                     `uni_code` (`code`) USING BTREE,
    KEY                     `idx_cdc_upd_time` (`cdc_upd_time`)
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
        PRIMARY KEY (`id`) USING BTREE,
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='费用附件表';


CREATE TABLE `xxz_company`
(
    `id`                 bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `name`               varchar(255) DEFAULT NULL COMMENT '公司名称',
    `code`               varchar(255) DEFAULT NULL COMMENT '公司编码',
    `credit_code`        varchar(255) DEFAULT NULL COMMENT '信用编码',
    `organization_code`  varchar(255) DEFAULT NULL COMMENT '组织机构代码',
    `business_url`       varchar(255) DEFAULT NULL COMMENT '营业执照',
    `legal_person`       varchar(50)  DEFAULT NULL COMMENT '法人',
    `identity card`      varchar(50)  DEFAULT NULL COMMENT '身份证',
    `legal_person_card`  varchar(50)  DEFAULT NULL COMMENT '法人身份证',
    `legal_person_url`   varchar(255) DEFAULT NULL COMMENT '法人照片',
    `legal_person_phone` varchar(50)  DEFAULT NULL COMMENT '法人手机号',
    `company_logo`       varchar(255) DEFAULT NULL COMMENT 'logo',
    `authorization_url`  varchar(255) DEFAULT NULL COMMENT '授权书',
    `audit`              tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态 0 待审核 1 审核中 2审核成功 3审核失败',
    `remark`             varchar(500) DEFAULT NULL COMMENT '备注',
    `created_time`       datetime     NOT NULL COMMENT '创建时间',
    `updated_time`       datetime     DEFAULT NULL COMMENT '更新时间',
    `create_by`          varchar(255) NOT NULL COMMENT '创建者',
    `version`            int(8) NOT NULL DEFAULT '1' COMMENT '版本号'
        PRIMARY KEY (`id`) USING BTREE,
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='费用附件表';