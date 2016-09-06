<?php 
/**
* @package   yoo_level Template
* @version   1.5.0 2009-06-01 16:41:57
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2009 YOOtheme GmbH
*/

define('DS', DIRECTORY_SEPARATOR);
define('PATH_ROOT', dirname(__FILE__).DS);

// load YOOtools
require_once(dirname(dirname(__FILE__)).DS.'php'.DS.'yootools.php');

// init vars
$yootools = &YOOTools::getInstance();

// set response header
$yootools->setHeader('js');

// mootools
include(PATH_ROOT.'mootools/mootools-release-1.11.js');

?>