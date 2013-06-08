INSERT INTO `{prefix}articles` (`id`, `title`, `slug`, `tags`, `related_articles`, `user_id`, `category_id`, `status`, `publish_time`, `created`, `modified`, `deleted_time`) VALUES
(1, 'Welcome to AdaptCMS Beta 3!', 'welcome-to-adaptcms-beta-3', NULL, '', 1, 2, 1, '{date}', '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}article_values` (`id`, `article_id`, `field_id`, `file_id`, `data`) VALUES
(1, 1, 1, 0, '<p>Hope you enjoy this third and final limited beta release of AdaptCMS. Poke around, do as you wish and any bugs reported or feedback is greatly appreciated.</p>\r\n<p>Thank you,<br />AdaptCMS Team</p>');
-- --------------------------------------------------------
INSERT INTO `{prefix}blocks` (`id`, `title`, `type`, `module_id`, `user_id`, `location`, `limit`, `settings`, `created`, `modified`, `deleted_time`) VALUES
(1, 'show-poll', 'dynamic', 8, 1, '["*"]', 1, '{"data":"1"}', '{date}', '{date}', '0000-00-00 00:00:00'),
(2, 'latest-links', 'dynamic', 17, 1, '["*"]', 3, '{"order_dir":"asc"}', '{date}', '{date}', '0000-00-00 00:00:00'),
(3, 'admin-main-articles-newest', 'dynamic', 1, 1, '["Pages|admin"]', 5, '{"category_id":"","order_by":"created","order_dir":"desc"}', '{date}', '{date}', '0000-00-00 00:00:00'),
(4, 'admin-main-users-newest', 'dynamic', 9, 1, '["Pages|admin"]', 5, '{"order_by":"created","order_dir":"desc"}', '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}categories` (`id`, `title`, `slug`, `user_id`, `created`, `modified`, `deleted_time`) VALUES
(1, 'Reviews', 'reviews', 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(2, 'News', 'news', 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(3, 'Games', 'games', 1, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}fields` (`id`, `title`, `label`, `field_order`, `category_id`, `module_id`, `field_type_id`, `description`, `field_options`, `field_limit_min`, `field_limit_max`, `required`, `user_id`, `created`, `modified`, `deleted_time`) VALUES
(1, 'summary', 'summary', 0, 2, 0, 11, 'textarea', 'You ought to enter a short summary of the news article.', '', 0, 0, 1, 1, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}field_types` (`id`, `title`, `label`, `slug`, `limit`, `user_id`, `ord`, `active`, `created`, `modified`, `deleted_time`) VALUES
(null, 'text', 'Text Input', 'text', 1, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Check', 'Checkbox', 'check', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Date', '', 'date', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Dropdown', 'Dropdown Selector', 'dropdown', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Email', '', 'email', 1, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'File', '', 'file', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Img', 'Image', 'img', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Multi Dropdown', 'Dropdown Selector Multiple', 'multi-dropdown', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Num', 'Number', 'num', 1, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Radio', '', 'radio', 0, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Textarea', 'Text Box', 'textarea', 1, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(null, 'Url', 'Website  URL', 'url', 1, 1, 0, 1, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}modules` (`id`, `title`, `model_title`, `block_active`, `is_plugin`, `is_searchable`, `is_fields`) VALUES
(1, 'Articles', 'Article', 1, 0, 1, 0),
(2, 'Blocks', 'Block', 0, 0, 0, 0),
(3, 'Categories', 'Category', 1, 0, 0, 0),
(4, 'Files', 'File', 1, 0, 0, 0),
(5, 'Fields', 'Field', 0, 0, 0, 0),
(6, 'Templates', 'Template', 0, 0, 0, 0),
(7, 'Themes', 'Theme', 0, 0, 0, 0),
(8, 'Polls', 'Poll', 1, 1, 0, 0),
(9, 'Users', 'User', 1, 0, 0, 1),
(10, 'Pages', 'Page', 0, 0, 0, 0),
(11, 'Roles', 'Role', 0, 0, 0, 0),
(12, 'Settings', 'Setting', 0, 0, 0, 0),
(13, 'Setting Values', 'SettingValue', 0, 0, 0, 0),
(14, 'Permissions', 'Permission', 0, 0, 0, 0),
(15, 'Support Tickets', 'Ticket', 0, 1, 0, 0),
(16, 'Media', 'Media', 0, 0, 0, 0),
(17, 'Links', 'Link', 1, 1, 1, 0),
(19, 'Cron', 'cron', 0, 0, 0, 0),
(20, 'Comments', 'comment', 1, 0, 0, 0),
(18, 'Messages', 'message', 0, 0, 0, 0);
-- --------------------------------------------------------
INSERT INTO `{prefix}pages` (`id`, `title`, `slug`, `content`, `user_id`, `created`, `modified`, `deleted_time`) VALUES
(1, 'Contact Us', 'contact-us', '<p>Here is a blank contact page!</p>', 1, '{date}', '{date}', '0000-00-00 00:00:00'),
(2, 'Home', 'home', '<?php if (!empty($articles)): ?>\r\n	<?php foreach($articles as $article): ?>\r\n		<div class="span8 no-marg-left">\r\n			<?= $this->Html->link(''<h2>'' . $article[''Article''][''title''] . ''</h2>'', array(\r\n				''controller'' => ''articles'', \r\n				''action'' => ''view'', \r\n            	''slug'' => $article[''Article''][''slug''],\r\n            	''id'' => $article[''Article''][''id'']\r\n			), array(''escape'' => false)) ?>\r\n\r\n			<p class="lead">\r\n				@ <em><?= $this->Admin->time($article[''Article''][''created'']) ?></em>\r\n			</p>\r\n\r\n			<blockquote><?= $this->Field->getTextAreaData($article) ?></blockquote>\r\n\r\n			<div id="post-options">\r\n		        <span class="pull-left">\r\n		            <?= $this->Html->link(''Read More'', array(\r\n		            	''controller'' => ''articles'', \r\n		            	''action'' => ''view'', \r\n		            	''slug'' => $article[''Article''][''slug''],\r\n		            	''id'' => $article[''Article''][''id'']\r\n	            	), array(''class'' => ''btn btn-primary'')) ?>\r\n		            <span style="margin-left: 10px">\r\n		                <i class="icon icon-comment"></i>&nbsp;\r\n		                <?= $this->Html->link($article[''Comments''] . '' Comments'', array(\r\n	                		''controller'' => ''articles'', \r\n	                		''action'' => ''view'', \r\n			            	''slug'' => $article[''Article''][''slug''],\r\n			            	''id'' => $article[''Article''][''id'']\r\n                		)) ?>\r\n		            </span>\r\n		            <span style="margin-left: 10px">\r\n		                <i class="icon-user"></i>&nbsp;\r\n		                Posted by <?= $this->Html->link($article[''User''][''username''], array(''controller'' => ''users'', ''action'' => ''profile'', $article[''User''][''username''])) ?>\r\n		            </span>\r\n		        </span>\r\n		        <span class="pull-right">\r\n		        	<?php if (!empty($article[''Article''][''tags''])): ?>\r\n			            <?php foreach($article[''Article''][''tags''] as $tag): ?>\r\n			                <?= $this->Html->link(''<span class="btn btn-success">''.$tag.''</span>'', array(''controller'' => ''articles'', ''action'' => ''tag'', $tag), array(''class'' => ''tags'', ''escape'' => false)) ?>\r\n			            <?php endforeach ?>\r\n		        	<?php endif ?>\r\n		        </span>\r\n		    </div>\r\n		</div>\r\n\r\n		<div class="clearfix"></div>\r\n\r\n		<hr>\r\n	<?php endforeach ?>\r\n<?php endif ?>\r\n\r\n<?= $this->element(''admin_pagination'') ?>', 1, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}permissions` (`id`, `module_id`, `role_id`, `action_id`, `plugin`, `controller`, `action`, `status`, `related`, `own`, `any`) VALUES
(1, 9, 1, 0, '', 'users', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"]},{"action":["ajax_change_user"]}]', 1, 1),
(2, 11, 1, 0, '', 'roles', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 2, 2),
(3, 11, 1, 0, '', 'roles', 'admin_add', 1, NULL, 0, 0),
(4, 11, 1, 0, '', 'roles', 'admin_edit', 1, NULL, 2, 2),
(5, 11, 1, 0, '', 'roles', 'admin_delete', 1, NULL, 2, 2),
(10, 0, 1, 0, '', 'permissions', 'admin_add', 1, NULL, 0, 0),
(123, 6, 1, 0, '', 'templates', 'admin_restore', 1, '', 1, 1),
(12, 1, 1, 0, '', 'articles', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(13, 15, 1, 0, 'support_ticket', 'tickets', 'index', 1, NULL, 1, 1),
(14, 1, 1, 0, '', 'articles', 'admin_add', 1, NULL, 0, 0),
(15, 1, 1, 0, '', 'articles', 'admin_edit', 1, NULL, 1, 1),
(16, 3, 1, 0, '', 'categories', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(17, 5, 1, 0, '', 'fields', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(18, 10, 1, 0, '', 'pages', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["display"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(19, 12, 1, 0, '', 'settings', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 1, 1),
(20, 8, 1, 0, 'polls', 'polls', 'admin_restore', 1, '', 1, 1),
(21, 10, 1, 0, '', 'pages', 'admin_edit', 1, NULL, 1, 1),
(22, 10, 1, 0, '', 'pages', 'admin_add', 1, NULL, 0, 0),
(23, 10, 1, 0, '', 'pages', 'admin_delete', 1, NULL, 1, 1),
(24, 12, 1, 0, '', 'settings', 'admin_add', 1, NULL, 0, 0),
(25, 12, 1, 0, '', 'settings', 'admin_edit', 1, NULL, 1, 1),
(26, 12, 1, 0, '', 'settings', 'admin_delete', 1, NULL, 1, 1),
(27, 13, 1, 0, '', 'setting_values', 'admin_add', 1, NULL, 0, 0),
(28, 13, 1, 0, '', 'setting_values', 'admin_edit', 1, NULL, 1, 1),
(29, 5, 1, 0, '', 'fields', 'admin_add', 1, NULL, 0, 0),
(30, 5, 1, 0, '', 'fields', 'admin_edit', 1, NULL, 1, 1),
(31, 15, 1, 0, 'support_ticket', 'tickets', 'add', 1, NULL, 2, 2),
(32, 1, 1, 0, '', 'articles', 'view', 1, '[{"action":["ajax_post"], "controller":["comments"]}]', 1, 1),
(33, 9, 1, 0, '', 'users', 'admin_add', 1, NULL, 0, 0),
(34, 9, 1, 0, '', 'users', 'admin_edit', 1, NULL, 1, 1),
(35, 8, 1, 0, 'polls', 'polls', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(36, 8, 1, 0, 'polls', 'polls', 'admin_add', 1, NULL, 0, 0),
(37, 8, 1, 0, 'polls', 'polls', 'admin_delete', 1, NULL, 1, 1),
(38, 8, 1, 0, 'polls', 'polls', 'admin_edit', 1, NULL, 1, 1),
(39, 3, 1, 0, '', 'categories', 'admin_add', 1, NULL, 0, 0),
(40, 3, 1, 0, '', 'categories', 'admin_edit', 1, NULL, 1, 1),
(41, 3, 1, 0, '', 'categories', 'view', 1, NULL, 1, 1),
(42, 10, 1, 0, '', 'pages', 'display', 1, '[{"action":["view"],"controller":["articles"]}]', 2, 2),
(43, 4, 1, 0, '', 'files', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]}]', 1, 1),
(44, 4, 1, 0, '', 'files', 'admin_add', 1, NULL, 0, 0),
(45, 4, 1, 0, '', 'files', 'admin_edit', 1, NULL, 1, 1),
(46, 4, 1, 0, '', 'files', 'admin_delete', 1, NULL, 1, 1),
(47, 6, 1, 0, '', 'templates', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 1, 1),
(48, 6, 1, 0, '', 'templates', 'admin_add', 1, NULL, 0, 0),
(49, 6, 1, 0, '', 'templates', 'admin_edit', 1, NULL, 1, 1),
(50, 6, 1, 0, '', 'templates', 'admin_delete', 1, NULL, 1, 1),
(51, 7, 1, 0, '', 'themes', 'admin_add', 1, NULL, 0, 0),
(52, 7, 1, 0, '', 'themes', 'admin_edit', 1, '[{"action":["admin_asset_add"]},{"action":["admin_asset_edit"]},{"action":["admin_asset_delete"]}]', 1, 1),
(53, 7, 1, 0, '', 'themes', 'admin_delete', 1, NULL, 1, 1),
(124, 7, 1, 0, '', 'themes', 'admin_restore', 1, '', 1, 1),
(90, 2, 1, 0, '', 'blocks', 'admin_add', 1, NULL, 0, 0),
(89, 2, 1, 0, '', 'blocks', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(60, 9, 1, 0, '', 'users', 'admin_delete', 1, NULL, 1, 1),
(61, 1, 1, 0, '', 'articles', 'tag', 1, NULL, 1, 1),
(62, 1, 1, 0, '', 'articles', 'admin_restore', 1, NULL, 1, 1),
(63, 9, 1, 0, '', 'users', 'admin_restore', 1, NULL, 1, 1),
(196, 16, 2, 0, '', 'media', 'view', 1, '[{"action":["view"],"controller":["files"]}]', 2, 2),
(69, 16, 1, 0, '', 'media', 'admin_edit', 1, NULL, 1, 1),
(68, 16, 1, 0, '', 'media', 'admin_add', 1, NULL, 0, 0),
(67, 16, 1, 0, '', 'media', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(70, 16, 1, 0, '', 'media', 'admin_delete', 1, NULL, 1, 1),
(71, 16, 1, 0, '', 'media', 'index', 1, '[{"action":["view"]}]', 2, 2),
(72, 8, 1, 0, 'polls', 'polls', 'vote', 1, NULL, 2, 2),
(73, 17, 1, 0, 'links', 'links', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(74, 17, 1, 0, 'links', 'links', 'admin_add', 1, NULL, 0, 0),
(75, 17, 1, 0, 'links', 'links', 'admin_edit', 1, NULL, 1, 1),
(76, 17, 1, 0, 'links', 'links', 'admin_delete', 1, NULL, 1, 1),
(77, 16, 1, 0, '', 'media', 'view', 1, '[{"action":["view"],"controller":["files"]}]', 2, 2),
(78, 4, 1, 0, '', 'files', 'view', 1, NULL, 1, 1),
(79, 4, 1, 0, '', 'files', 'index', 1, '[{"action":["view"]}]', 1, 1),
(80, 9, 1, 0, '', 'users', 'edit', 1, NULL, 1, 2),
(81, 9, 1, 0, '', 'users', 'profile', 1, NULL, 1, 1),
(82, 20, 1, 0, '', 'comments', 'admin_edit', 1, NULL, 1, 1),
(83, 5, 1, 0, '', 'fields', 'admin_delete', 1, NULL, 1, 1),
(84, 21, 1, 0, '', 'messages', 'index', 1, NULL, 1, 1),
(85, 21, 1, 0, '', 'messages', 'view', 1, NULL, 1, 1),
(86, 21, 1, 0, '', 'messages', 'send', 1, NULL, 1, 1),
(87, 21, 1, 0, '', 'messages', 'move', 1, NULL, 1, 1),
(88, 0, 1, 0, '', 'plugins', 'admin_index', 1, NULL, 2, 2),
(91, 19, 1, 0, '', 'cron', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 1, 1),
(92, 10, 1, 0, '', 'pages', 'admin_restore', 1, NULL, 1, 1),
(127, 0, 1, 0, '', 'tools', 'admin_optimize_database', 1, '', 2, 2),
(126, 0, 1, 0, '', 'tools', 'admin_clear_cache', 1, '', 2, 2),
(125, 0, 1, 0, '', 'tools', 'admin_index', 1, '', 2, 2),
(122, 11, 1, 0, '', 'roles', 'admin_restore', 1, '', 2, 2),
(94, 9, 1, 0, '', 'users', 'ajax_change_user', 1, '', 2, 2),
(95, 9, 1, 0, '', 'users', 'ajax_check_user', 1, '', 2, 2),
(96, 6, 1, 0, '', 'templates', 'ajax_template_locations', 1, '', 2, 2),
(97, 6, 1, 0, '', 'templates', 'ajax_theme_refresh', 1, '', 2, 2),
(98, 6, 1, 0, '', 'templates', 'admin_ajax_quick_search', 1, '', 2, 2),
(99, 6, 1, 0, '', 'templates', 'ajax_theme_update', 1, '', 2, 2),
(100, 0, 1, 0, '', 'permissions', 'admin_ajax_location_list', 1, '', 2, 2),
(101, 5, 1, 0, '', 'fields', 'admin_ajax_import', 1, '', 2, 2),
(102, 5, 1, 0, '', 'fields', 'admin_ajax_fields', 1, '', 2, 2),
(103, 5, 1, 0, '', 'fields', 'admin_ajax_order', 1, '', 2, 2),
(104, 20, 1, 0, '', 'comments', 'ajax_post', 1, '', 1, 1),
(105, 2, 1, 0, '', 'blocks', 'admin_ajax_get_model', 1, '', 2, 2),
(106, 1, 1, 0, '', 'articles', 'admin_ajax_related_add', 1, '', 2, 2),
(107, 1, 1, 0, '', 'articles', 'admin_ajax_related_search', 1, '', 1, 1),
(108, 1, 1, 0, '', 'articles', 'admin_delete', 1, '', 1, 1),
(109, 2, 1, 0, '', 'blocks', 'admin_edit', 1, '', 1, 0),
(110, 2, 1, 0, '', 'blocks', 'admin_delete', 1, '', 1, 1),
(111, 2, 1, 0, '', 'blocks', 'admin_restore', 1, '', 1, 1),
(112, 3, 1, 0, '', 'categories', 'admin_delete', 1, '', 1, 1),
(113, 3, 1, 0, '', 'categories', 'admin_restore', 1, '', 1, 1),
(114, 19, 1, 0, '', 'cron', 'admin_add', 1, '', 1, 1),
(115, 19, 1, 0, '', 'cron', 'admin_delete', 1, '', 1, 1),
(116, 19, 1, 0, '', 'cron', 'admin_edit', 1, '', 1, 1),
(117, 19, 1, 0, '', 'cron', 'admin_restore', 1, '', 1, 1),
(118, 5, 1, 0, '', 'fields', 'admin_restore', 1, '', 1, 1),
(119, 4, 1, 0, '', 'files', 'admin_restore', 1, '', 1, 1),
(120, 17, 1, 0, 'links', 'links', 'admin_restore', 1, '', 1, 1),
(121, 16, 1, 0, '', 'media', 'admin_restore', 1, '', 1, 1),
(195, 8, 2, 0, 'polls', 'polls', 'vote', 1, NULL, 2, 2),
(193, 1, 2, 0, '', 'articles', 'tag', 1, NULL, 2, 2),
(194, 16, 2, 0, '', 'media', 'index', 1, '[{"action":["view"]}]', 2, 2),
(192, 10, 2, 0, '', 'pages', 'display', 1, '[{"action":["view"],"controller":["articles"]}]', 2, 2),
(191, 3, 2, 0, '', 'categories', 'view', 1, NULL, 2, 2),
(190, 1, 2, 0, '', 'articles', 'view', 1, '[{"action":["ajax_post"], "controller":["comments"]}]', 2, 2),
(189, 15, 2, 0, 'support_ticket', 'tickets', 'add', 1, NULL, 2, 2),
(188, 15, 2, 0, 'support_ticket', 'tickets', 'index', 1, NULL, 0, 0),
(187, 20, 3, 0, '', 'comments', 'ajax_post', 1, '', 2, 2),
(186, 9, 3, 0, '', 'users', 'ajax_check_user', 1, '', 2, 2),
(180, 9, 3, 0, '', 'users', 'profile', 1, NULL, 2, 1),
(178, 4, 3, 0, '', 'files', 'index', 1, '[{"action":["view"]}]', 1, 1),
(177, 4, 3, 0, '', 'files', 'view', 1, NULL, 1, 1),
(176, 16, 3, 0, '', 'media', 'view', 1, '[{"action":["view"],"controller":["files"]}]', 2, 2),
(175, 8, 3, 0, 'polls', 'polls', 'vote', 1, NULL, 2, 2),
(174, 16, 3, 0, '', 'media', 'index', 1, '[{"action":["view"]}]', 2, 2),
(173, 1, 3, 0, '', 'articles', 'tag', 1, NULL, 2, 2),
(172, 10, 3, 0, '', 'pages', 'display', 1, '[{"action":["view"],"controller":["articles"]}]', 2, 2),
(171, 3, 3, 0, '', 'categories', 'view', 1, NULL, 2, 2),
(170, 1, 3, 0, '', 'articles', 'view', 1, '[{"action":["ajax_post"], "controller":["comments"]}]', 2, 2),
(169, 15, 3, 0, 'support_ticket', 'tickets', 'add', 1, NULL, 2, 2),
(168, 15, 3, 0, 'support_ticket', 'tickets', 'index', 1, NULL, 2, 2),
(197, 4, 2, 0, '', 'files', 'view', 1, NULL, 1, 1),
(198, 4, 2, 0, '', 'files', 'index', 1, '[{"action":["view"]}]', 1, 1),
(199, 9, 2, 0, '', 'users', 'edit', 1, NULL, 1, 2),
(200, 9, 2, 0, '', 'users', 'profile', 1, NULL, 1, 2),
(201, 21, 2, 0, '', 'messages', 'index', 1, NULL, 1, 1),
(202, 21, 2, 0, '', 'messages', 'view', 1, NULL, 1, 1),
(203, 21, 2, 0, '', 'messages', 'send', 1, NULL, 1, 1),
(204, 21, 2, 0, '', 'messages', 'move', 1, NULL, 1, 1),
(206, 9, 2, 0, '', 'users', 'ajax_check_user', 1, '', 2, 2),
(207, 20, 2, 0, '', 'comments', 'ajax_post', 1, '', 1, 1),
(208, 8, 1, 0, 'polls', 'polls', 'ajax_view_poll', 1, '[{"action":["vote"]}]', 1, 1),
(209, 8, 1, 0, 'polls', 'polls', 'ajax_results', 1, '[{"action":["vote"]}]', 1, 1),
(210, 8, 2, 0, 'polls', 'polls', 'ajax_results', 1, '[{"action":["vote"]}]', 2, 1),
(211, 8, 2, 0, 'polls', 'polls', 'ajax_view_poll', 1, '[{"action":["vote"]}]', 2, 1),
(212, 8, 3, 0, 'polls', 'polls', 'ajax_results', 1, '[{"action":["vote"]}]', 2, 1),
(213, 8, 3, 0, 'polls', 'polls', 'ajax_view_poll', 1, '[{"action":["vote"]}]', 2, 1),
(214, 9, 4, 0, '', 'users', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"]},{"action":["ajax_change_user"]}]', 1, 1),
(215, 11, 4, 0, '', 'roles', 'admin_index', 0, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 2, 2),
(216, 11, 4, 0, '', 'roles', 'admin_add', 0, NULL, 0, 0),
(217, 11, 4, 0, '', 'roles', 'admin_edit', 0, NULL, 2, 2),
(218, 11, 4, 0, '', 'roles', 'admin_delete', 0, NULL, 2, 2),
(219, 0, 4, 0, '', 'permissions', 'admin_add', 0, NULL, 0, 0),
(220, 6, 4, 0, '', 'templates', 'admin_restore', 0, '', 0, 0),
(221, 1, 4, 0, '', 'articles', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]},{"action":["profile"],"controller":["users"]}]', 1, 0),
(222, 15, 4, 0, 'support_ticket', 'tickets', 'index', 1, NULL, 0, 0),
(223, 1, 4, 0, '', 'articles', 'admin_add', 1, NULL, 0, 0),
(224, 1, 4, 0, '', 'articles', 'admin_edit', 1, NULL, 1, 0),
(225, 3, 4, 0, '', 'categories', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(226, 5, 4, 0, '', 'fields', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(227, 10, 4, 0, '', 'pages', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["display"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(228, 12, 4, 0, '', 'settings', 'admin_index', 0, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 0, 0),
(229, 8, 4, 0, 'polls', 'polls', 'admin_restore', 1, '', 1, 0),
(230, 10, 4, 0, '', 'pages', 'admin_edit', 1, NULL, 1, 0),
(231, 10, 4, 0, '', 'pages', 'admin_add', 1, NULL, 0, 0),
(232, 10, 4, 0, '', 'pages', 'admin_delete', 1, NULL, 1, 0),
(233, 12, 4, 0, '', 'settings', 'admin_add', 0, NULL, 0, 0),
(234, 12, 4, 0, '', 'settings', 'admin_edit', 0, NULL, 0, 0),
(235, 12, 4, 0, '', 'settings', 'admin_delete', 0, NULL, 0, 0),
(236, 13, 4, 0, '', 'setting_values', 'admin_add', 0, NULL, 0, 0),
(237, 13, 4, 0, '', 'setting_values', 'admin_edit', 0, NULL, 0, 0),
(238, 5, 4, 0, '', 'fields', 'admin_add', 1, NULL, 0, 0),
(239, 5, 4, 0, '', 'fields', 'admin_edit', 1, NULL, 1, 0),
(240, 15, 4, 0, 'support_ticket', 'tickets', 'add', 1, NULL, 2, 2),
(241, 1, 4, 0, '', 'articles', 'view', 1, '[{"action":["ajax_post"], "controller":["comments"]}]', 1, 1),
(242, 9, 4, 0, '', 'users', 'admin_add', 0, NULL, 0, 0),
(243, 9, 4, 0, '', 'users', 'admin_edit', 0, NULL, 0, 0),
(244, 8, 4, 0, 'polls', 'polls', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(245, 8, 4, 0, 'polls', 'polls', 'admin_add', 1, NULL, 0, 0),
(246, 8, 4, 0, 'polls', 'polls', 'admin_delete', 1, NULL, 1, 0),
(247, 8, 4, 0, 'polls', 'polls', 'admin_edit', 1, NULL, 1, 1),
(248, 3, 4, 0, '', 'categories', 'admin_add', 0, NULL, 0, 0),
(249, 3, 4, 0, '', 'categories', 'admin_edit', 0, NULL, 0, 0),
(250, 3, 4, 0, '', 'categories', 'view', 1, NULL, 1, 1),
(251, 10, 4, 0, '', 'pages', 'display', 1, '[{"action":["view"],"controller":["articles"]}]', 2, 2),
(252, 4, 4, 0, '', 'files', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]}]', 1, 0),
(253, 4, 4, 0, '', 'files', 'admin_add', 1, NULL, 0, 0),
(254, 4, 4, 0, '', 'files', 'admin_edit', 1, NULL, 1, 0),
(255, 4, 4, 0, '', 'files', 'admin_delete', 1, NULL, 1, 0),
(256, 6, 4, 0, '', 'templates', 'admin_index', 0, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 0, 0),
(257, 6, 4, 0, '', 'templates', 'admin_add', 0, NULL, 0, 0),
(258, 6, 4, 0, '', 'templates', 'admin_edit', 0, NULL, 0, 0),
(259, 6, 4, 0, '', 'templates', 'admin_delete', 0, NULL, 0, 0),
(260, 7, 4, 0, '', 'themes', 'admin_add', 0, NULL, 0, 0),
(261, 7, 4, 0, '', 'themes', 'admin_edit', 0, '[{"action":["admin_asset_add"]},{"action":["admin_asset_edit"]},{"action":["admin_asset_delete"]}]', 0, 0),
(262, 7, 4, 0, '', 'themes', 'admin_delete', 0, NULL, 0, 0),
(263, 7, 4, 0, '', 'themes', 'admin_restore', 0, '', 0, 0),
(264, 2, 4, 0, '', 'blocks', 'admin_add', 1, NULL, 0, 0),
(265, 2, 4, 0, '', 'blocks', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(266, 9, 4, 0, '', 'users', 'admin_delete', 0, NULL, 0, 0),
(267, 1, 4, 0, '', 'articles', 'tag', 1, NULL, 1, 1),
(268, 1, 4, 0, '', 'articles', 'admin_restore', 1, NULL, 1, 0),
(269, 9, 4, 0, '', 'users', 'admin_restore', 0, NULL, 0, 0),
(270, 16, 4, 0, '', 'media', 'admin_edit', 1, NULL, 1, 0),
(271, 16, 4, 0, '', 'media', 'admin_add', 1, NULL, 0, 0),
(272, 16, 4, 0, '', 'media', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["view"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(273, 16, 4, 0, '', 'media', 'admin_delete', 1, NULL, 1, 0),
(274, 16, 4, 0, '', 'media', 'index', 1, '[{"action":["view"]}]', 2, 2),
(275, 8, 4, 0, 'polls', 'polls', 'vote', 1, NULL, 2, 2),
(276, 17, 4, 0, 'links', 'links', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(277, 17, 4, 0, 'links', 'links', 'admin_add', 1, NULL, 0, 0),
(278, 17, 4, 0, 'links', 'links', 'admin_edit', 1, NULL, 1, 0),
(279, 17, 4, 0, 'links', 'links', 'admin_delete', 1, NULL, 1, 0),
(280, 16, 4, 0, '', 'media', 'view', 1, '[{"action":["view"],"controller":["files"]}]', 2, 2),
(281, 4, 4, 0, '', 'files', 'view', 1, NULL, 1, 1),
(282, 4, 4, 0, '', 'files', 'index', 1, '[{"action":["view"]}]', 1, 1),
(283, 9, 4, 0, '', 'users', 'edit', 1, NULL, 1, 2),
(284, 9, 4, 0, '', 'users', 'profile', 1, NULL, 1, 1),
(285, 20, 4, 0, '', 'comments', 'admin_edit', 1, NULL, 1, 1),
(286, 5, 4, 0, '', 'fields', 'admin_delete', 1, NULL, 1, 0),
(287, 21, 4, 0, '', 'messages', 'index', 1, NULL, 1, 1),
(288, 21, 4, 0, '', 'messages', 'view', 1, NULL, 1, 1),
(289, 21, 4, 0, '', 'messages', 'send', 1, NULL, 1, 1),
(290, 21, 4, 0, '', 'messages', 'move', 1, NULL, 1, 1),
(291, 0, 4, 0, '', 'plugins', 'admin_index', 1, NULL, 2, 2),
(292, 19, 4, 0, '', 'cron', 'admin_index', 0, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]}]', 0, 0),
(293, 10, 4, 0, '', 'pages', 'admin_restore', 1, NULL, 1, 0),
(294, 0, 4, 0, '', 'tools', 'admin_optimize_database', 1, '', 2, 2),
(295, 0, 4, 0, '', 'tools', 'admin_clear_cache', 1, '', 2, 2),
(296, 0, 4, 0, '', 'tools', 'admin_index', 1, '', 2, 2),
(297, 11, 4, 0, '', 'roles', 'admin_restore', 0, '', 2, 2),
(299, 9, 4, 0, '', 'users', 'ajax_change_user', 1, '', 2, 2),
(300, 9, 4, 0, '', 'users', 'ajax_check_user', 1, '', 2, 2),
(301, 6, 4, 0, '', 'templates', 'ajax_template_locations', 0, '', 2, 2),
(302, 6, 4, 0, '', 'templates', 'ajax_theme_refresh', 0, '', 2, 2),
(303, 6, 4, 0, '', 'templates', 'admin_ajax_quick_search', 0, '', 2, 2),
(304, 6, 4, 0, '', 'templates', 'ajax_theme_update', 0, '', 2, 2),
(305, 0, 4, 0, '', 'permissions', 'admin_ajax_location_list', 1, '', 2, 2),
(306, 5, 4, 0, '', 'fields', 'admin_ajax_import', 1, '', 2, 2),
(307, 5, 4, 0, '', 'fields', 'admin_ajax_fields', 1, '', 2, 2),
(308, 5, 4, 0, '', 'fields', 'admin_ajax_order', 1, '', 2, 2),
(309, 20, 4, 0, '', 'comments', 'ajax_post', 1, '', 1, 1),
(310, 2, 4, 0, '', 'blocks', 'admin_ajax_get_model', 1, '', 2, 2),
(311, 1, 4, 0, '', 'articles', 'admin_ajax_related_add', 1, '', 2, 2),
(312, 1, 4, 0, '', 'articles', 'admin_ajax_related_search', 1, '', 1, 1),
(313, 1, 4, 0, '', 'articles', 'admin_delete', 1, '', 1, 0),
(314, 2, 4, 0, '', 'blocks', 'admin_edit', 1, '', 1, 0),
(315, 2, 4, 0, '', 'blocks', 'admin_delete', 1, '', 1, 0),
(316, 2, 4, 0, '', 'blocks', 'admin_restore', 1, '', 1, 0),
(317, 3, 4, 0, '', 'categories', 'admin_delete', 0, '', 0, 0),
(318, 3, 4, 0, '', 'categories', 'admin_restore', 0, '', 0, 0),
(319, 19, 4, 0, '', 'cron', 'admin_add', 0, '', 1, 1),
(320, 19, 4, 0, '', 'cron', 'admin_delete', 0, '', 0, 0),
(321, 19, 4, 0, '', 'cron', 'admin_edit', 0, '', 0, 0),
(322, 19, 4, 0, '', 'cron', 'admin_restore', 0, '', 0, 0),
(323, 5, 4, 0, '', 'fields', 'admin_restore', 0, '', 0, 0),
(324, 4, 4, 0, '', 'files', 'admin_restore', 1, '', 1, 0),
(325, 17, 4, 0, 'links', 'links', 'admin_restore', 1, '', 1, 0),
(326, 16, 4, 0, '', 'media', 'admin_restore', 1, '', 1, 0),
(327, 8, 4, 0, 'polls', 'polls', 'ajax_view_poll', 1, '[{"action":["vote"]}]', 1, 1),
(328, 8, 4, 0, 'polls', 'polls', 'ajax_results', 1, '[{"action":["vote"]}]', 1, 1),
(329, 10, 1, 0, '', 'pages', 'admin', 1, NULL, 2, 2),
(330, 10, 4, 0, '', 'pages', 'admin', 1, NULL, 2, 2),
(331, 0, 4, 0, '', 'plugins', 'admin_settings', 0, NULL, 2, 2),
(332, 0, 1, 0, '', 'plugins', 'admin_settings', 1, NULL, 2, 2),
(333, 0, 1, 0, '', 'tools', 'admin_convert_wordpress', 1, '', 2, 2),
(334, 0, 4, 0, '', 'tools', 'admin_convert_wordpress', 0, '', 2, 2),
(335, 7, 1, 0, '', 'themes', 'admin_asset_delete', 1, '', 0, 1),
(336, 7, 1, 0, '', 'themes', 'admin_asset_add', 1, '', 0, 1),
(337, 7, 1, 0, '', 'themes', 'admin_asset_edit', 1, '', 0, 1),
(338, 7, 4, 0, '', 'themes', 'admin_asset_delete', 0, '', 0, 0),
(339, 7, 4, 0, '', 'themes', 'admin_asset_add', 0, '', 0, 0),
(340, 7, 4, 0, '', 'themes', 'admin_asset_edit', 0, '', 0, 0),
(341, 12, 4, 0, '', 'settings', 'admin_restore', 0, NULL, 0, 0),
(342, 12, 1, 0, '', 'settings', 'admin_restore', 1, NULL, 1, 1),
(343, NULL, 1, 0, '', 'plugins', 'admin_assets', 1, '', 2, 2),
(344, NULL, 4, 0, '', 'plugins', 'admin_assets', 0, '', 2, 2),
(345, NULL, 1, 0, '', 'plugins', 'admin_permissions', 1, '', 2, 2),
(346, NULL, 4, 0, '', 'plugins', 'admin_permissions', 0, '', 2, 2),
(347, 0, 1, 0, '', 'tools', 'admin_convert_adaptcms', 1, '', 2, 2),
(348, 0, 4, 0, '', 'tools', 'admin_convert_adaptcms', 0, '', 2, 2),
(349, 12, 1, 0, '', 'settings', 'admin_restore', 0, NULL, 2, 2),
(350, 12, 4, 0, '', 'settings', 'admin_restore', 0, NULL, 2, 2),
(null, NULL, 1, 0, '', 'menus', 'admin_restore', 1, '', 1, 1),
(null, NULL, 1, 0, '', 'menus', 'admin_delete', 1, '', 1, 1),
(null, NULL, 1, 0, '', 'menus', 'admin_edit', 1, '', 1, 1),
(null, NULL, 1, 0, '', 'menus', 'admin_add', 1, '', 0, 0),
(null, NULL, 1, 0, '', 'menus', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(null, NULL, 4, 0, '', 'menus', 'admin_restore', 1, '', 1, 1),
(null, NULL, 4, 0, '', 'menus', 'admin_delete', 1, '', 1, 1),
(null, NULL, 4, 0, '', 'menus', 'admin_edit', 1, '', 1, 1),
(null, NULL, 4, 0, '', 'menus', 'admin_add', 1, '', 0, 0),
(null, NULL, 4, 0, '', 'menus', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(null, NULL, 1, 0, '', 'field_types', 'admin_restore', 1, '', 1, 1),
(null, NULL, 1, 0, '', 'field_types', 'admin_delete', 1, '', 1, 1),
(null, NULL, 1, 0, '', 'field_types', 'admin_edit', 1, '', 1, 1),
(null, NULL, 1, 0, '', 'field_types', 'admin_add', 1, '', 0, 0),
(null, NULL, 1, 0, '', 'field_types', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1),
(null, NULL, 4, 0, '', 'field_types', 'admin_restore', 1, '', 1, 1),
(null, NULL, 4, 0, '', 'field_types', 'admin_delete', 1, '', 1, 1),
(null, NULL, 4, 0, '', 'field_types', 'admin_edit', 1, '', 1, 1),
(null, NULL, 4, 0, '', 'field_types', 'admin_add', 1, '', 0, 0),
(null, NULL, 4, 0, '', 'field_types', 'admin_index', 1, '[{"action":["admin_add"]},{"action":["admin_edit"]},{"action":["admin_delete"]},{"action":["admin_restore"]},{"action":["profile"],"controller":["users"]}]', 1, 1);
-- --------------------------------------------------------
INSERT INTO `{prefix}plugin_links` (`id`, `file_id`, `title`, `url`, `link_title`, `link_target`, `views`, `user_id`, `created`, `modified`, `deleted_time`) VALUES
(1, 0, 'AdaptCMS', 'http://www.adaptcms.com', 'AdaptCMS', '_new', 0, 1, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}plugin_poll_values` (`id`, `title`, `plugin_poll_id`, `votes`) VALUES
(1, 'NBA', 1, 0),
(2, 'NHL', 1, 0),
(3, 'Soccer', 1, 0),
(4, 'NFL', 1, 0);
-- --------------------------------------------------------
INSERT INTO `{prefix}plugin_polls` (`id`, `article_id`, `title`, `poll_type`, `user_id`, `created`, `modified`, `deleted_time`) VALUES
(1, NULL, 'Your favorite sport?', NULL, 1, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}roles` (`id`, `title`, `defaults`, `created`, `modified`, `deleted_time`) VALUES
(1, 'admin', 'default-admin', '0000-00-00 00:00:00', '{date}', '0000-00-00 00:00:00'),
(2, 'member', 'default-member', '{date}', '{date}', '0000-00-00 00:00:00'),
(3, 'guest', 'default-guest', '{date}', '{date}', '0000-00-00 00:00:00'),
(4, 'staff', NULL, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}settings` (`id`, `title`, `created`, `deleted_time`) VALUES
(1, 'Site Info', '{date}', '0000-00-00 00:00:00'),
(2, 'Appearance', '{date}', '0000-00-00 00:00:00'),
(3, 'Users', '{date}', '0000-00-00 00:00:00'),
(4, 'Articles', '{date}', '0000-00-00 00:00:00'),
(5, 'Admin', '{date}', '0000-00-00 00:00:00'),
(6, 'Comments', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}setting_values` (`id`, `title`, `description`, `data`, `data_options`, `setting_type`, `setting_id`, `model`, `created`, `modified`, `deleted_time`) VALUES
(1, 'Site Name', '<p>What do you think? A site...name</p>', 'Alpha', NULL, 'text', 1, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(2, 'Webmaster Email', '<p>email DUMMY - okay, sorry</p>', 'charliepage88@gmail.com', NULL, 'text', 1, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(5, 'default-theme', '', 'Default', NULL, 'text', 2, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(7, 'test', '', '', '["360","PS3"]', 'dropdown', 2, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(8, 'Security Question Options', '<p>Security Questions incase of lost password.</p>', '', '["What was your mothers maiden name?","Name of your first pet?","Color of your first car?","Your favorite sport?"]', 'dropdown', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(9, 'Security Questions', '<p>How many must a user select when signing up?</p>', '2', '["0","1","2","3"]', 'dropdown', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(10, 'Number of Articles on Homepage', '', '5', NULL, 'text', 4, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(11, 'Categories of Articles to show on homepage', '', 'News', NULL, 'text', 4, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(12, 'User Status', '<p>Choosing email activation, user must activate their account via an email link sent to them. Staff activation requires one with access to manually activate a user account.</p>', 'Staff Activation', '["Email Activation","Staff Activation"]', 'dropdown', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(21, 'User Register Email Subject', '', 'New Account Created', NULL, 'text', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(22, 'Number of Articles to list on Category Page', '', '3', NULL, 'text', 4, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(23, 'Number of Items Per Page', '', '9', NULL, 'text', 5, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(28, 'Comment Post WYSIWYG Editor', '<p>Will the wysiwyg editor be enabled when posting a comment?</p>', 'Yes', '["Yes","No"]', 'dropdown', 6, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(27, 'Comment Post Flood Limit', '<p>x amount of seconds before a user can post another comment. 30 by default.</p>', '30', NULL, 'text', 6, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(26, 'Comment Post Captcha Non-Logged In', '<p>Does a non-logged in user have to enter in a captcha code, to have their comment posted?</p>\r\n<p>*note* The guest group must have permission to view an article/to post a comment, in order for this to have effect.</p>', 'Yes', '["Yes","No"]', 'dropdown', 6, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(25, 'Registration Captcha', '<p>When signing up, will a re-captcha be shown? (and is required - we recommend to keep this enabled)</p>', 'Yes', '["Yes","No"]', 'radio', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(24, 'User Password Reset', '<p>Set this to 0 to disable, if more than 0 then x is the amount of days that can pass before a new password is required. This is mandated upon login.</p>', '0', NULL, 'text', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(29, 'Is Registration Open?', '<p>If set to "No", then users cannot register.</p>', 'Yes', '["Yes","No"]', 'dropdown', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(30, 'Closed Registration Message', '', '<p>You cannot register at the moment.</p>', NULL, 'textarea', 3, NULL, '{date}', '{date}', '0000-00-00 00:00:00'),
(31, 'Comment Allowed HTML', '<p>Allowed HTML tags when posting a comment. Entering in nothing will result in all HTML being stripped.</p>', '<strong>,<a>,<p>,<br>', NULL, 'text', 6, NULL, '{date}', '{date}', '0000-00-00 00:00:00');
-- --------------------------------------------------------
INSERT INTO `{prefix}themes` (`id`, `title`, `created`, `modified`, `deleted_time`) VALUES
(1, 'Default', '{date}', '{date}', '0000-00-00 00:00:00');
