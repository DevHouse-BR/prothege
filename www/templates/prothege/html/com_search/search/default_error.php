<?php
/**
* @package   yoo_level Template
* @version   1.5.0 2009-06-01 16:41:57
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2009 YOOtheme GmbH
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
?>

<h2>
	<?php echo JText::_('Error') ?>
</h2>
<p>
	<?php $this->escape($this->error); ?>
</p>