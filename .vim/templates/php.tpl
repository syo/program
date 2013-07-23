<?php

require_once('/Applications/MAMP/htdocs/smarty/libs/Smarty.class.php');

$smarty = new Smarty();

$smarty->template_dir = '/Applications/MAMP/htdocs/smarty_project/hello/templates';
$smarty->compile_dir = '/Applications/MAMP/htdocs/smarty_project/hello/templates_c';
$smarty->config_dir = '/Applications/MAMP/htdocs/smarty_project/hello/configs';
$smarty->cache_dir = '/Applications/MAMP/htdocs/smarty_project/hello/cache';

$smarty->assign('msg', 'Hello World!');
$smarty->display('sample.tpl');
