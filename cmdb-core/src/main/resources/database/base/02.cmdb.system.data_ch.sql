SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `adm_ci_type_attr_base` (`id_adm_ci_type`, `name`, `description`, `input_type`, `property_name`, `property_type`, `length`, `reference_id`, `reference_name`, `reference_type`, `filter_rule`, `search_seq_no`, `display_type`, `display_seq_no`, `edit_is_null`, `edit_is_only`, `edit_is_hiden`, `edit_is_editable`, `is_defunct`, `special_logic`, `status`, `is_system`, `is_access_controlled`, `is_auto`, `auto_fill_rule`, `is_refreshable`) VALUES
	(1, '全局唯一ID', '全局唯一ID', 'text', 'guid', 'varchar', 15, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '唯一名称', '唯一名称', 'text', 'key_name', 'varchar', 200, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 1, 0, 0, 0, NULL, 'notCreated', 1, 0, 1, NULL, 0),
	(1, '状态', '状态', 'select', 'state', 'int', 15, 7, NULL, NULL, NULL, 2, 1, 2, 0, 0, 0, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '确认日期', '确认日期', 'text', 'fixed_date', 'varchar', 19, NULL, NULL, NULL, NULL, 3, 1, 3, 1, 0, 0, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '前全局唯一ID', '前一版本数据的guid', 'text', 'p_guid', 'varchar', 15, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '根全局唯一ID', '原始数据guid', 'text', 'r_guid', 'varchar', 15, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '描述说明', '描述说明', 'textArea', 'description', 'varchar', 1000, NULL, NULL, NULL, NULL, 4, 1, 4, 1, 0, 0, 1, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '编码', '编码', 'text', 'code', 'varchar', 50, NULL, NULL, NULL, NULL, 5, 1, 5, 0, 0, 0, 1, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '更新用户', '更新用户', 'text', 'updated_by', 'varchar', 50, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '更新日期', '更新日期', 'date', 'updated_date', 'datetime', 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '创建用户', '创建用户', 'text', 'created_by', 'varchar', 50, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0),
	(1, '创建日期', '创建日期', 'date', 'created_date', 'datetime', 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 'notCreated', 1, 0, 0, NULL, 0);	
	
INSERT INTO `adm_basekey_cat` (`id_adm_basekey_cat`, `cat_name`, `description`, `id_adm_role`, `id_adm_basekey_cat_type`, `group_type_id`) VALUES
	(1, 'ci_layer', '层级', NULL, 1, NULL),
	(2, 'ci_catalog', '目录', NULL, 1, NULL),
	(3, 'ci_zoom_level', 'Zoom', NULL, 1, NULL),
	(4, 'ci_attr_type', '属性类型', NULL, 1, NULL),
	(5, 'ci_attr_enum_type', '枚举类型', NULL, 1, NULL),
	(6, 'ci_attr_ref_type', '引用类型', NULL, 1, NULL),
	(7, 'ci_state_design', '设计类CI状态', NULL, 1, NULL),
	(8, 'ci_state_create', '可创建类CI状态', NULL, 1, NULL),
	(9, 'ci_state_start_stop', '可起停类CI状态', NULL, 1, NULL),
	(10, 'state_transition_operation', '状态迁移操作', NULL, 1, NULL),
	(11, 'state_transition_action', '状态迁移动作', NULL, 1, NULL);

INSERT INTO `adm_basekey_cat_type` (`id_adm_basekey_cat_type`, `name`, `description`, `ci_type_id`, `type`) VALUES
	(1, 'sys', NULL, NULL, 1),
	(2, 'common', NULL, NULL, 2);

INSERT INTO `adm_basekey_code` (`id_adm_basekey`, `id_adm_basekey_cat`, `code`, `value`, `group_code_id`, `code_description`, `seq_no`, `status`) VALUES
	(11, 3, '1', '1', NULL, NULL, 1, 'active'),
	(12, 3, '2', '2', NULL, NULL, 2, 'active'),
	(13, 3, '3', '3', NULL, NULL, 3, 'active'),
	(14, 3, '4', '4', NULL, NULL, 4, 'active'),
	(15, 3, '5', '5', NULL, NULL, 5, 'active'),
	(16, 4, 'text', '文本', NULL, NULL, 1, 'active'),
	(17, 4, 'area', '文本域', NULL, NULL, 2, 'active'),
	(18, 4, 'number', '整型数字', NULL, NULL, 3, 'active'),
	(19, 4, 'regular_text', '正则校验文本', NULL, NULL, 4, 'active'),
	(20, 4, 'datetime', '时间', NULL, NULL, 5, 'active'),
	(21, 4, 'select', '下拉选择', NULL, NULL, 6, 'active'),
	(22, 4, 'multiSelect', '多选下拉选择', NULL, NULL, 7, 'active'),
	(23, 4, 'ref', '引用', NULL, NULL, 8, 'active'),
	(24, 4, 'multiRef', '多选引用', NULL, NULL, 9, 'active'),
	(25, 4, 'orchestration_ref', '编排引用', NULL, NULL, 10, 'active'),
	(26, 4, 'orchestration_multi_ref', '编排多选引用', NULL, NULL, 11, 'active'),
	(27, 5, 'common', '公共枚举', NULL, NULL, 1, 'active'),
	(28, 5, 'private', '私有枚举', NULL, NULL, 2, 'active'),
	(29, 6, 'belong', '属于', NULL, NULL, 1, 'active'),
	(30, 6, 'running', '运行在', NULL, NULL, 2, 'active'),
	(31, 6, 'composition', '组成', NULL, NULL, 3, 'active'),
	(32, 6, 'relation', '关联', NULL, NULL, 4, 'active'),
	(33, 6, 'realize', '实现', NULL, NULL, 5, 'active'),
	(34, 7, 'new', '新增', NULL, NULL, 1, 'active'),
	(35, 7, 'update', '更新', NULL, NULL, 2, 'active'),
	(36, 7, 'delete', '删除', NULL, NULL, 3, 'active'),
	(37, 8, 'created', '创建', NULL, NULL, 6, 'active'),
	(38, 8, 'change', '变更', NULL, NULL, 7, 'active'),
	(39, 8, 'destroyed', '销毁', NULL, NULL, 8, 'active'),
	(40, 9, 'created', '创建', NULL, NULL, 1, 'active'),
	(41, 9, 'startup', '启动', NULL, NULL, 2, 'active'),
	(42, 9, 'change', '变更', NULL, NULL, 3, 'active'),
	(43, 9, 'stoped', '停止', NULL, NULL, 4, 'active'),
	(44, 9, 'destroyed', '销毁', NULL, NULL, 5, 'active'),
	(45, 10, 'insert', '添加', NULL, NULL, 1, 'active'),
	(46, 10, 'update', '更新', NULL, NULL, 2, 'active'),
	(47, 10, 'discard', '放弃', NULL, NULL, 3, 'active'),
	(48, 10, 'delete', '删除', NULL, NULL, 4, 'active'),
	(49, 10, 'confirm', '确认', NULL, NULL, 5, 'active'),
	(50, 10, 'startup', '启动', NULL, NULL, 6, 'active'),
	(51, 10, 'stop', '停止', NULL, NULL, 7, 'active'),
	(52, 11, 'insert', '插入', NULL, NULL, 1, 'active'),
	(53, 11, 'insert-update', '插入-更新', NULL, NULL, 2, 'active'),
	(54, 11, 'delete', '删除', NULL, NULL, 3, 'active'),
	(55, 11, 'update-delete', '更新-删除', NULL, NULL, 4, 'active'),
	(56, 11, 'update', '更新', NULL, NULL, 5, 'active'),
	(57, 11, 'confirm', '确认', NULL, NULL, 6, 'active');

INSERT INTO `adm_state_transition` (`id_adm_state_transition`, `current_state`, `current_state_is_confirmed`, `target_state`, `target_state_is_confirmed`, `operation`, `action`, `status`) VALUES
	(1, 37, 0, NULL, NULL, 48, 54, 'active'),
	(2, NULL, NULL, 37, 0, 45, 52, 'active'),
	(3, 37, 0, 37, 0, 46, 56, 'active'),
	(4, 37, 0, 37, 1, 49, 57, 'active'),
	(5, 37, 1, 38, 0, 46, 53, 'active'),
	(6, 38, 0, 37, 1, 47, 55, 'active'),
	(7, 37, 1, 39, 0, 48, 53, 'active'),
	(8, 39, 0, 37, 1, 47, 55, 'active'),
	(9, 38, 0, 38, 0, 46, 56, 'active'),
	(10, 38, 0, 38, 1, 49, 57, 'active'),
	(11, 38, 1, 38, 0, 46, 53, 'active'),
	(12, 38, 0, 38, 1, 47, 55, 'active'),
	(13, 38, 1, 39, 0, 48, 53, 'active'),
	(14, 39, 0, 38, 1, 47, 55, 'active'),
	(15, 39, 0, 39, 1, 49, 57, 'active'),
	(16, 40, 0, NULL, NULL, 48, 54, 'active'),
	(17, NULL, NULL, 40, 0, 45, 52, 'active'),
	(18, 40, 0, 40, 0, 46, 56, 'active'),
	(19, 40, 0, 40, 1, 49, 57, 'active'),
	(20, 40, 1, 41, 0, 50, 53, 'active'),
	(21, 41, 0, 40, 1, 47, 55, 'active'),
	(22, 41, 0, 41, 1, 49, 57, 'active'),
	(23, 40, 1, 43, 0, 51, 53, 'active'),
	(24, 43, 0, 40, 1, 47, 55, 'active'),
	(25, 43, 0, 43, 1, 49, 57, 'active'),
	(26, 41, 1, 43, 0, 51, 53, 'active'),
	(27, 43, 0, 41, 1, 47, 55, 'active'),
	(28, 43, 1, 41, 0, 50, 53, 'active'),
	(29, 41, 0, 43, 1, 47, 55, 'active'),
	(30, 41, 1, 42, 0, 46, 53, 'active'),
	(31, 42, 0, 41, 1, 47, 55, 'active'),
	(32, 43, 1, 42, 0, 46, 53, 'active'),
	(33, 42, 0, 43, 1, 47, 55, 'active'),
	(34, 42, 0, 42, 0, 46, 56, 'active'),
	(35, 42, 0, 42, 1, 49, 57, 'active'),
	(36, 42, 1, 43, 0, 51, 53, 'active'),
	(37, 43, 0, 42, 1, 47, 55, 'active'),
	(38, 42, 1, 41, 0, 50, 53, 'active'),
	(39, 41, 0, 42, 1, 47, 55, 'active'),
	(40, 43, 1, 44, 0, 48, 53, 'active'),
	(41, 44, 0, 43, 1, 47, 55, 'active'),
	(42, 44, 0, 44, 1, 49, 57, 'active'),
	(43, 34, 0, NULL, NULL, 48, 54, 'active'),
	(44, NULL, NULL, 34, 0, 45, 52, 'active'),
	(45, 34, 0, 34, 0, 46, 56, 'active'),
	(46, 34, 0, 34, 1, 49, 57, 'active'),
	(47, 34, 1, 35, 0, 46, 53, 'active'),
	(48, 35, 0, 34, 1, 47, 55, 'active'),
	(49, 34, 1, 36, 0, 48, 53, 'active'),
	(50, 36, 0, 34, 1, 47, 55, 'active'),
	(51, 35, 0, 35, 0, 46, 56, 'active'),
	(52, 35, 0, 35, 1, 49, 57, 'active'),
	(53, 35, 1, 35, 0, 46, 53, 'active'),
	(54, 35, 0, 35, 1, 47, 55, 'active'),
	(55, 35, 1, 36, 0, 48, 53, 'active'),
	(56, 36, 0, 35, 1, 47, 55, 'active'),
	(57, 36, 0, 36, 1, 49, 57, 'active');

INSERT INTO `adm_role` (`id_adm_role`, `role_name`, `description`, `id_adm_tenement`, `parent_id_adm_role`, `role_type`, `is_system`) VALUES
	(1, 'SUPER_ADMIN', '超级管理员', NULL, NULL, 'ADMIN', 1),
	(2, 'CMDB_ADMIN', 'CMDB管理员', NULL, NULL, 'ADMIN', 0),
	(3, 'PLUGIN_ADMIN', '插件管理员', NULL, NULL, 'ADMIN', 0),
	(4, 'IDC_ARCHITECT', '基础架构规划-IDC', NULL, NULL, 'ADMIN', 0),
	(5, 'NETWORK_ARCHITECT', '基础架构规划-网络', NULL, NULL, 'ADMIN', 0),
	(6, 'APP_ARCHITECT', '应用架构师', NULL, NULL, 'ADMIN', 0),
	(7, 'OPS-PROD', '生产环境运维', NULL, NULL, 'ADMIN', 0),
	(8, 'OPS-TEST', '测试环境运维', NULL, NULL, 'ADMIN', 0),
	(9, 'DEVELOPER', '开发人员', NULL, NULL, 'ADMIN', 0),
	(10, 'REGULAR', '普通用户', NULL, NULL, 'REGULAR', 0),
	(11, 'READONLY', '只读用户', NULL, NULL, 'READONLY', 0);

INSERT INTO `adm_user` (`id_adm_user`, `name`, `code`, `encrypted_password`, `description`, `id_adm_tenement`, `action_flag`, `is_system`) VALUES
	(1, 'admin', 'admin','$2a$10$Gh3WDwZ8kFpxbmo/h.oywuN.LuYwgrlx53ZeG.mz7P4eKgct7IYZm', 'admin', NULL, 0, 1);

INSERT INTO `adm_role_user` (`id_adm_role_user`, `id_adm_role`, `id_adm_user`, `is_system`) VALUES
    ('1', '1', 1, 1);

INSERT INTO `adm_menu` (`id_adm_menu`, `name`, `other_name`, `seq_no`, `parent_id_adm_menu`) VALUES
(1, 'DATA_QUERY', '数据查询', 1, NULL),
(2, 'DATA_MANAGEMENT', '数据管理', 2, NULL),
(5, 'ADMIN', '系统', 5, NULL),
(6, 'DESIGNING_CI_DATA_ENQUIRY', 'CI数据查询', 6, 1),
(7, 'DESIGNING_CI_INTEGRATED_QUERY_EXECUTION', 'CI数据综合查询', 7, 1),
(8, 'DESIGNING_ENUM_ENQUIRY', '枚举数据查询', 8, 1),
(9, 'DESIGNING_CI_DATA_MANAGEMENT', 'CI数据管理', 9, 2),
(10, 'DESIGNING_CI_INTEGRATED_QUERY_MANAGEMENT', 'CI综合查询管理', 10, 2),
(11, 'DESIGNING_ENUM_MANAGEMENT', '枚举数据管理', 11, 2),
(20, 'ADMIN_CMDB_MODEL_MANAGEMENT', 'CMDB模型管理', 20, 5),
(21, 'ADMIN_PERMISSION_MANAGEMENT', '系统权限管理', 21, 5),
(22, 'ADMIN_BASE_DATA_MANAGEMENT', '基础数据管理', 22, 5),
(23, 'ADMIN_QUERY_LOG', '日志查询', 23, 5),
(24, 'ADMIN_USER_PASSWORD_MANAGEMENT', '用户密码管理', 24, 5);

INSERT INTO `adm_role_menu` (`id_adm_role_menu`, `id_adm_role`, `id_adm_menu`, `is_system`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(5, 1, 5, 1),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 1, 10, 0),
(11, 1, 11, 0),
(20, 1, 20, 0),
(21, 1, 21, 1),
(22, 1, 22, 0),
(23, 1, 23, 0),
(24, 1, 24, 0);

SET FOREIGN_KEY_CHECKS=1;