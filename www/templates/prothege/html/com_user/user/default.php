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

<div class="joomla <?php echo $this->params->get('pageclass_sfx')?>">
	
	<div class="user">
	
		<?php if ( $this->params->get( 'show_page_title' ) ) : ?>
		<h1 class="pagetitle">
			<?php echo $this->escape($this->params->get('page_title')); ?>
		</h1>
		<?php endif; ?>

		<p>
			<?php echo nl2br($this->params->get('welcome_desc', JText::_( 'WELCOME_DESC' ))); ?>
		</p>

	</div>
</div>