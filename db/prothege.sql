-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Set 06, 2016 as 10:19 AM
-- Versão do Servidor: 5.0.51
-- Versão do PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `prothege`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(90) NOT NULL default 'banner',
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(150) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(150) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(150) NOT NULL default '',
  `image_position` varchar(90) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(150) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Extraindo dados da tabela `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'General', '', 'general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', 'powered_by.png', '4', 'right', 'Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a layout. Use the guide below to understand which layouts are available and how you might use them.', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(34, 0, 'YOOtheme', '', 'yootheme', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(36, 0, 'YOOscroller', '', 'yooscroller', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(150) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` text NOT NULL,
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Extraindo dados da tabela `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=1\nshow_intro=1\nshow_section=0\nlink_section=1\nshow_category=0\nlink_category=1\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\nfilter_groups=29|18|19|20|21|30|23|24\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'site=pt-BR\nadministrator=pt-BR\n\n', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `con_position` text,
  `address` text,
  `suburb` text,
  `state` text,
  `country` text,
  `postcode` varchar(255) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(60) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name 1', 'name-1', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'articles.jpg', 'top', 'email@email.com', 0, 1, 62, '2008-12-15 15:46:45', 1, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=1\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 12, 0, '', ''),
(2, 'Name 2', 'name-2', '', 'Street Address', 'Town', 'State', 'Country', 'Postal Code', 'Telephone', 'Fax', 'Informations', 'clock.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 2, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=1\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 12, 0, 'Mobile Phone', 'http://Web URL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `title_alias` text NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` text NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Extraindo dados da tabela `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications.</strong>\r\n\r\n<p>Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users.</p>\r\n', '\r\nWith a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.\r\n\r\n<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p>\r\n\r\n<p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p>\r\n\r\n<p>Thinking Web publishing? Think Joomla!</p>', 1, 4, 0, 29, '2006-10-13 10:00:00', 62, '', '2008-12-16 15:36:38', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 40, 0, 1, '', '', 0, 107, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://www.joomla.org/">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2007 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p>\r\n\r\n<p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html">''GNU General Public License FAQ''</a>.</p>\r\n', '\r\n<p>Joomla! documentation is released under the terms of the <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/" title="Creative Commons ">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> or by the specific license of their respective copyright owners.</p>\r\n\r\n<p>The Joomla! licence has always been GPL.</p>', 1, 4, 0, 29, '2004-08-20 10:11:07', 62, '', '2008-12-16 15:45:30', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 120, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4>Joomla! features:</h4>\r\n<ul>\r\n	<li>Completely database driven site engines </li>\r\n	<li>News, products, or services sections fully editable and manageable</li>\r\n	<li>Topics sections can be added to by contributing Authors </li>\r\n	<li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li>\r\n	<li>Browser upload of images to your own library for use anywhere in the site </li>\r\n	<li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li>\r\n	<li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX</li>\r\n</ul>\r\n', '\r\n<h4>Extensive Administration:</h4>\r\n<ul>\r\n	<li>Change order of objects including news, FAQs, Articles etc. </li>\r\n	<li>Random Newsflash generator </li>\r\n	<li>Remote Author submission Module for News, Articles, FAQs, and Links </li>\r\n	<li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li>\r\n	<li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li>\r\n	<li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li>\r\n	<li>News Feed Manager. Choose from over 360 News Feeds from around the world </li>\r\n	<li>E-mail a friend and Print format available for every story and Article </li>\r\n	<li>In-line Text editor similar to any basic word processor software </li>\r\n	<li>User editable look and feel </li>\r\n	<li>Polls/Surveys - Now put a different one on each page </li>\r\n	<li>Custom Page Modules. Download custom page Modules to spice up your site </li>\r\n	<li>Template Manager. Download Templates and implement them in seconds </li>\r\n	<li>Layout preview. See how it looks before going live </li>\r\n	<li>Banner Manager. Make money out of your site</li>\r\n</ul>', 1, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2008-12-16 15:41:08', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 3, '', '', 0, 68, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br />\r\n</p>\r\n\r\n<p><strong>So what''s the catch? How much does this system cost?</strong></p>\r\n\r\n<p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p>\r\n\r\n', '\r\n\r\n<p>Joomla! changes all that ... <br />\r\n	Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p>\r\n	\r\n<p>It is easy to install and administer, and is reliable. </p>\r\n\r\n<p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p>\r\n\r\n<p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', 1, 4, 0, 29, '2006-10-13 07:49:20', 62, '', '2008-12-16 15:47:44', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 22, 0, 2, '', '', 0, 218, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h3>Support</h3>\r\n\r\n<p>Support for the Joomla! CMS can be found on several places. The best place to start would be the official <a href="http://help.joomla.org/" target="_blank">Help Site</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too! </p>\r\n<p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features. </p>\r\n\r\n<p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p>\r\n', '\r\n<p>Two other resources for Support are the <a href="http://dev.joomla.org/" target="_blank">Joomla! Developer Network</a> (JDN) and the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions Directory</a> (JED). The Developer Network for example provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site. </p>\r\n\r\n<p>The Joomla! Core members are regularly posting their blog reports about several topics such as programming techniques used in Joomla!, Security, Events and more. You can even subscribe to get notified by e-mail when a new blog post is made! </p>\r\n\r\n<h3>Documentation </h3>\r\n\r\n<p>Joomla! Documentation can of course be found on the <a href="http://help.joomla.org/" target="_blank">Help Site</a>. You can find information such as an Installation Guide, User and Administrator manuals, Frequently Asked Questions and a lot more. The User Documentation Team are the guardians of the documentation relating to the practical use of Joomla!. The Developer Documentation Team are the stalwarts behind detailing how Joomla! works from the ground up and how you can develop your own Extensions and Templates and much more.</p>\r\n\r\n<p>Other than the documentation provided by the Joomla! Documentation Work Groups there are also books written about Joomla! You can find a listing of these books in the <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla! Bookshelf</a> .</p>\r\n\r\n<h1>Want to help? </h1>\r\n\r\n<p>If you want to help in the documentation project for Joomla! then please post your details on the <a href="http://forum.joomla.org/index.php/board,62.0.html" title="The Joomla! User Documentation Forums">User Documentation Forum</a> or the <a href="http://forum.joomla.org/index.php/board,60.0.html" title="The Joomla! Developer Documentation Forum">Developer Documentation Forum</a> </p>\r\n\r\n<p><a class="urlextern" href="http://forum.joomla.org/index.php/board,391.0.html" target="_blank" title="http://forum.joomla.org/index.php/board,59.0.html" onclick="return svchk()"><br />\r\n	</a></p>', 1, 4, 0, 29, '2006-10-09 08:33:57', 62, '', '2008-12-22 19:39:55', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 16, 0, 7, '', '', 0, 9, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p>Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content. </p>\r\n<p>The minimum requirements are:</p>\r\n<ul>\r\n	<li>Apache 1.x, 2.x and higher</li>\r\n	<li>PHP 4.3 and higher</li>\r\n	<li>MySQL 3.23 and higher</li>\r\n</ul>\r\nIt will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 1, 4, 0, 29, '2006-10-11 04:22:14', 62, '', '2008-12-16 15:34:16', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 6, '', '', 0, 17, 'robots=\nauthor='),
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 140,000 members, the online forums at <a href="http://forum.joomla.org/" target="_blank">forum.joomla.org</a> are a great resource for both new and experienced users. Go ahead, ask your toughest questions, the community is waiting to see what you''re going to do with your Joomla! site.</p>\r\n\r\n<p><strong>Do you want to show off your new Joomla! Web site?</strong> Go ahead, we have a section dedicated to that on our forum. </p>\r\n', '\r\n<p><strong>Do you want to join in?</strong></p>\r\n\r\n<p>If you think working with Joomla! is fun, wait until you start working on it. We''re passionate about helping Joomla! Users make the jump to becoming contributing members of the community, so there are many ways you can help Joomla!''s development:</p>\r\n\r\n<ul>\r\n	<li>Submit news about Joomla!. We syndicate all Joomla! related news on our <a href="http://news.joomla.org" title="Joomla! News Portal">news portal</a>. If you have some Joomla! news that you would like to share with the community, please submit your short story, article, announcement or review <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">here</a>.</li>\r\n	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://dev.joomla.org/content/view/1450/89/">Reporting Bugs</a>, for details on how we like our bug reports served up</li>\r\n	<li>Submit patches for new and/or fixed behaviour. Please read <a href="http://dev.joomla.org/content/view/14/55/">Submitting Patches</a>, for details on how to submit a patch.</li>\r\n	<li>Join the <a href="http://forum.joomla.org/index.php/board,126.0.html" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla!. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li>\r\n	<li>Join any of the <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">Joomla!  Working Groups</a> and bring your personal expertise to  the Joomla! community. More info about the different working groups can be found <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">on the Working Group Roll Call</a>. </li>\r\n</ul>\r\n\r\n<p> That''s all you need to know if you''d like to join the Joomla! development community. </p>', 1, 4, 0, 29, '2006-10-12 16:50:48', 62, '', '2008-12-16 15:44:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 4, '', '', 0, 53, 'robots=\nauthor='),
(44, 'Level', 'level', '', '', '', 1, 5, 0, 34, '2009-06-01 01:00:00', 62, '', '2009-06-01 12:53:41', 62, 0, '0000-00-00 00:00:00', '2009-06-01 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 109, 0, 1, '', '', 0, 14240, 'robots=\nauthor='),
(45, 'Features', 'features', '', '<h3>Tableless template overrides</h3>\r\n<p>From 2009 on all YOOtheme templates come with overrides for Joomla''s core output. This means that not only the template''s layout is tableless but also the whole content area that Joomla usually renders as tables.</p>\r\n<br />\r\n<h3>The YOOmenu system</h3>\r\nThe YOOmenu is a flexible all-in-one menu system right out of the box. It bundles some sophisticated features which are all covered in this <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=112&Itemid=2" target="_blank" title="Watch the advanced YOOmenu system video tutorial.">advanced video tutorial</a>. Here are some of them:\r\n<div style="overflow: hidden;">\r\n	<img style="float: right; margin: 15px 0px 0px 10px" src="images/yootheme/features_menu.png" alt="YOOmenu System" title="YOOmenu System" width="270" height="257" />\r\n	<ul>\r\n		<li style="margin-bottom: 13px;">Advanced menu with <strong>split functionality</strong> and lots of <strong>fancy effects</strong> like sliding boxes and fading colors...\r\n			<br />Learn more about setting up the menu by reading this <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=99&Itemid=2" target="_blank" title="Read how to set up the YOOmenu system">tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;">Expanding and collapsing <strong>accordion menus</strong>. Watch the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=108&Itemid=2" target="_blank" title="Get to know how to set up the accordion menu">video tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;"><strong>Different page backgrounds</strong> for each menu item possible. Watch the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=101&Itemid=2" target="_blank" title="Learn how to change the site color for each menu item.">video tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;">Menu items can have explanatory <strong>subtitles</strong>. Read the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=141&Itemid=2" target="_blank" title="See how to set subtitles for the menu items">tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;"><strong>Background images</strong> for menu items. Read the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=102&Itemid=2" target="_blank" title="Read how to set a menu item background image">tutorial</a>.\r\n		</li>\r\n	</ul>\r\n</div>\r\n<br /><br />\r\n<h3>Full compatibility with all YOOtools extensions</h3>\r\n<div class="tip ie6-zoom" style="overflow: hidden;">\r\n	All YOOtools extensions are working right out of the box. Take a look at the demo pages and watch the video tutorials.\r\n	\r\n	<div class="float-left width50">\r\n		<ul class="checkbox">\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yooaccordion" title="YOOaccordion">YOOaccordion</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yooaccordion" title="YOOaccordion">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=129&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoocarousel" title="YOOcarousel">YOOcarousel</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoocarousel" title="YOOcarousel">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=126&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoodrawer" title="YOOdrawer">YOOdrawer</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoodrawer" title="YOOdrawer">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=127&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yooslider" title="YOOslider">YOOslider</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yooslider" title="YOOslider">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=128&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yooscroller" title="YOOscroller">YOOscroller</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yooscroller" title="YOOscroller">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=130&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoosearch" title="YOOsearch">YOOsearch</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoosearch" title="YOOsearch">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=134&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoogallery" title="YOOgallery">YOOgallery</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoogallery" title="YOOgallery">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=144&Itemid=2" target="_blank">\r\n				<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/></a></li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoomaps" title="YOOmaps">YOOmaps</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoomaps" title="YOOmaps">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=132&Itemid=2" target="_blank">\r\n				<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class="float-left width50">\r\n		<ul class="checkbox">\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yootooltip" title="YOOtooltip">YOOtooltip</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yootooltip" title="YOOtooltip">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=137&Itemid=2" target="_blank">\r\n				<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a></li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yootoppanel" title="YOOtoppanel">YOOtoppanel</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yootoppanel" title="YOOtoppanel">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=135&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yooeffects" title="YOOeffects">YOOeffects</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yooeffects" title="YOOeffects">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yoologin" title="YOOlogin">YOOlogin</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yoologin" title="YOOlogin">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=131&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yooholidays" title="YOOholidays">YOOholidays</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/free-stuff" title="YOOholidays">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yooiecheck" title="YOOiecheck">YOOiecheck</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yooiecheck" title="YOOiecheck">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yoosnapshots" title="YOOsnapshots">YOOsnapshots</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yoosnapshots" title="YOOsnapshots">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=133&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>Of course, this YOOtheme template is also fully compatible with the <a target="_blank" href="http://teamlog.yootheme.com/">Teamlog component</a>.</p>\r\n<br />\r\n<h3>Installation package & sliced image source files</h3>\r\n<p>You can download a full installation package of this template. It includes the current Joomla version and the complete demo content of the website you are looking at right now. You can install it to take a look at how everything is set up in the Joomla backend.</p>\r\n<span class="info">Make sure you click "Install Sample Data" during the installation process.</span>\r\n<p>Also you can download the editable fully sliced image source files. With them you can completely customise your template''s look to match your or your client''s corporate identity.</p>\r\n<span class="info">Adobe Fireworks CS3 or higher is required to edit the image source files.</span>\r\n<br />\r\n<h3>Basic Help</h3>\r\n<p>Learn more about how to install and set up a YOOtheme template and watch <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=88&Itemid=2" target="_blank" title="How to install and set up a YOOtheme template">this video tutorial.</a></p>', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2009-01-09 15:20:23', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 72, 0, 2, '', '', 0, 1309, 'robots=\nauthor='),
(46, 'Typography', 'typography', '', '<div class="note">Typography is a key element in web design. This templates delivers you sophisticated typography and various stylings. The style guide gives you an overview about all possible HTML tag stylings provided by the template. It also helps you to set up the available classes for special stylings.</div>\r\n\r\n<h1>This is an H1 Header</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h2>This is an H2 Header</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h3>This is an H3 Header</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h4>This is an H4 Header</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h5>This is an H5 Header</h5>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h6>This is an H6 Header</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p class="dropcap"><strong>Dropcap: use &lt;p class="dropcap"&gt;</strong>. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<hr class="dotted" />\r\n\r\n<strong>Horizontal Rule:</strong> &lt;hr&gt; tag with class="dotted"\r\n\r\n<hr class="dotted" />\r\n\r\n<div class="floatbox">\r\n	<div class="float-left width33">\r\n	\r\n		<h4>Inline Styles</h4>\r\n		<p>\r\n			<a href="#">Default &lt;a&gt; tag</a>\r\n			<br /><a href="#" class="icon-folder">&lt;a&gt; with class="icon-folder"</a>\r\n			<br /><a href="#" class="icon-file">&lt;a&gt; with class="icon-file"</a>\r\n			<br /><a href="#" class="icon-download">&lt;a&gt; with class="icon-download"</a>\r\n			<br /><a href="#" class="icon-external">&lt;a&gt; with class="icon-external"</a>\r\n			<br /><a href="#" class="icon-pdf">&lt;a&gt; with class="icon-pdf"</a>\r\n			<br /><br /><em>Default &lt;em&gt;</em>\r\n			<br /><em class="box">&lt;em&gt; with class="box"</em>\r\n			<br /><br /><acronym title="By marking up acronyms you can give useful information to browsers, spell checkers, translation systems and search-engine indexers.">Default &lt;acronym&gt;</acronym>\r\n			<br /><abbr title="By marking up abbreviations you can give useful information to browsers, spell checkers, translation systems and search-engine indexers.">Default &lt;abbr&gt;</abbr>\r\n		\r\n		</p>\r\n	\r\n	</div>\r\n	<div class="float-left width33">\r\n\r\n		<h4>Unordered List Styles</h4>\r\n\r\n		<ul>\r\n			<li>Default &lt;ul&gt; tag</li>\r\n			<li>Lorem ipsum dolor</li>\r\n			<li>Lorem ipsum dolor</li>\r\n		</ul>\r\n\r\n		<ul class="checkbox">\r\n			<li>&lt;ul&gt; with class="checkbox"</li>\r\n		</ul>\r\n		\r\n		<ul class="arrow">\r\n		  <li>&lt;ul&gt; with class="arrow"</li>\r\n		</ul>\r\n		\r\n		<ul class="star">\r\n		  <li>&lt;ul&gt; with class="star"</li>\r\n		</ul>\r\n		\r\n		<ul class="check">\r\n		  <li>&lt;ul&gt; with class="check"</li>\r\n		</ul>\r\n\r\n	</div>\r\n	<div class="float-left width33">\r\n	\r\n		<h4>Ordered List Styles</h4>\r\n\r\n		<ol>\r\n			<li>Default &lt;ol&gt; tag</li>\r\n			<li>Lorem ipsum dolor</li>\r\n			<li>Lorem ipsum dolor</li>\r\n		</ol>\r\n\r\n		<ol class="disc">\r\n		  <li>&lt;ol&gt; tag with class="disc"</li>\r\n		  <li>Item 2</li>\r\n		  <li>Item 3</li>\r\n		  <li>Item 4</li>\r\n		</ol>\r\n\r\n	</div>\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h4>Div and Span Styles</h4>\r\n<div class="note"><strong>&lt;div&gt; or &lt;span&gt; tag with class="note"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="info"><strong>&lt;div&gt; or &lt;span&gt; tag with class="info"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="alert"><strong>&lt;div&gt; or &lt;span&gt; tag with class="alert"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="download"><strong>&lt;div&gt; or &lt;span&gt; tag with class="download"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="tip"><strong>&lt;div&gt; or &lt;span&gt; tag with class="tip"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h4>Blockquote and Q Styles</h4>\r\n<strong>Default &lt;blockquote&gt;</strong>\r\n<br /><strong>Or &lt;q&gt; tag with class="blockquote"</strong>\r\n<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</blockquote>\r\n\r\n<strong>&lt;blockquote&gt; tag with class="quotation" and an an additional &lt;p&gt; tag.</strong>\r\n<br />(use &lt;blockquote&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt;)\r\n<blockquote class="quotation">\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	</p>\r\n</blockquote>\r\n\r\n<hr class="dotted" />\r\n\r\n<h4>Combine Styles</h4>\r\n<div class="floatbox">\r\n\r\n	<p class="dropcap" style="margin-top: 5px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <span class="info inset-right width25"><strong>Combine Tags</strong> with class "inset-right" or "inset-left". Example: &lt;span class=" info inset-right width25"&gt;.</span> ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n	</p>\r\n	\r\n	<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <q class="blockquote inset-left width25"><strong>Combine Tags</strong> with class "inset-right" or "inset-left". Example: &lt;q class=" blockquote inset-right width25"&gt;.</q> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n	</p>\r\n	\r\n	<p class="dropcap">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <span class="tip inset-right width25"><strong>Possible Width Classes</strong> .width15, .width18, .width20, .width23, .width25, .width33, .width35, .width40, .width45, .width50</span> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n	</p>\r\n	\r\n	<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n	</p>\r\n	\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<div class="floatbox">\r\n	<div class="float-left width50">\r\n		\r\n		<h4>Form Styles</h4>\r\n	\r\n		<form action="#">\r\n		<fieldset style="margin-right: 20px;">\r\n		<legend>Form legend</legend>\r\n		<div><label for="f1">Text input:</label> <input type="text" value="input text" id="f1"/></div>\r\n		<div><label for="f2">Radio input:</label> <input type="radio" id="f2"/></div>\r\n		<div><label for="f3">Checkbox input:</label> <input type="checkbox" id="f3"/></div>\r\n		<div><label for="f4">Select field:</label> <select id="f4"><option>Option 01</option><option>Option 02</option></select></div>\r\n		<div><label for="f5">Textarea:</label><br/><textarea rows="5" cols="30" id="f5">Textarea text</textarea></div>\r\n		<div><label for="f6">Button:</label> <input type="button" value="button text" id="f6"/></div>\r\n		</fieldset>\r\n		</form>\r\n\r\n	</div>\r\n	<div class="float-left width50">\r\n	\r\n		<h4>Preformatted Text Style</h4>\r\n		<pre>\r\npre {\r\n	margin: 10px 0 10px 0px;\r\n	padding: 5px 0 5px 10px;\r\n	border: 1px dotted #aab4be;\r\n	border-left: 20px solid #b4b4b4;\r\n	background: #fafafa;\r\n	font-size: 90%;\r\n	color: #2E8B57;\r\n	font-family: "Courier New", Courier, monospace;\r\n	\r\n	/* Browser specific (not valid) styles */\r\n	/* to make preformatted text wrap */\r\n	 \r\n	white-space: pre-wrap;       /* css-3 */\r\n	white-space: -moz-pre-wrap;  /* Mozilla */\r\n}\r\n		</pre>\r\n			\r\n	</div>\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2009-04-30 16:02:37', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 133, 0, 3, '', '', 0, 1544, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(47, 'Layout', 'layout', '', 'This template supports a wide variety of module positions and variations. Almost any column and module layout can be achieved with the YOOtheme module system. Read the following descriptions carefully to learn all about the possibilities this template has to offer.\r\n\r\n<br /><br />\r\n<h3>Module Variations</h3>\r\nMany modules variations are included in this template. They come with different colors and styles. To enable a specific module variation for a module you have to set the specific module class suffix in the module parameters.\r\n<div class="info">All different module stylings can be seen at the <a href="index.php?option=com_content&view=article&id=48&Itemid=58">Module Variations Page</a>.</div>\r\n\r\n<br />\r\n<h3>Module Positions</h3>\r\nThe YOOtheme module system offers nearly unlimited combinations of module positions. For example you can have a 1-Column, 2-Column or 3 Column layout. It is also possible to have a nested right column instead of a right column which has an equal height as the left column.\r\n<br /><br />\r\nIn most module positions you can publish as many modules as possible for you current layout. You are surely familiar with this for the vertical module positions like left and right. But <strong>with the YOOtheme module system we introduce some new module positions which supports publishing as many modules as possible in one horizontal row.</strong> Also the height of all published modules in one vertical row  is adjust to match each other.\r\n<br /><br />\r\n<strong>All module positions are fully collapsible.</strong> If there is no module published in a certain position, this module position will contract and disappear.\r\n<br /><br />\r\n<div class="floatbox">\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Positions</h4>\r\n		<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_positions_overview.png" alt="Module Positions" title="Module Positions" width="270" height="400" />\r\n	</div>\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>More Details</h4>\r\n		<img class="correct-png" style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_positions_details.png" alt="More Details" title="More Details" width="270" height="400" />\r\n	</div>\r\n</div>\r\n\r\n<br /><br />\r\n<h3>Module Proportions</h3>\r\nOne outstanding feature of the YOOtheme module system is the possibility to chose between different module proportions for each module position. By default YOOtheme offers two module proportions: equal and golden ratio. For all module positions with the suffix "-equal" in the upper figure exists an equivalent module position with the suffix "-goldenratio". The proportions of the modules depend on the position in which they are published ("-equal" or "-goldenratio").\r\n<div class="tip"><strong>Example:</strong> You can publish 2 modules in top-equal. The width of each module will be 50%. If you publish the 2 modules in top-goldenratio the width of the first module will be 62% and of the second module 38%.</div>\r\nOf course you can publish the modules for each page in different positions. For example this feature allows you to publish one big module and a second smaller one (golden ratio) on the frontpage. For all other sites you can use equal module widths.\r\n<div class="alert"><strong>Important:</strong> For each page and each module position you have to chose if you are going to publish in the "equal" or "golden ratio" position. It is not possible to publish a module in the "equal" position and at the same time another module in the "golden ratio" position on the same page and for the same position. If this happens the "equal" proportion has priority and will be displayed. All modules published in the "golden ratio" position will not be displayed.</div>\r\nThe following figures show the different proportions depending on the numbers of published modules.\r\n<br /><br />\r\n<div class="floatbox">\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Equal</h4>\r\n		<img class="correct-png" style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_proportions_equal.png" alt="Equal Proportions" title="Equal Proportions" width="270" height="390" />\r\n	</div>\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Golden Ratio</h4>\r\n		<img class="correct-png" style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_proportions_goldenratio.png" alt="Golden Ratio Proportions" title="Golden Ratio Proportions" width="270" height="390" />\r\n	</div>\r\n</div>\r\n<div class="tip">If you want add your own custom proportion or learn more technical details take a look at this tutorial: <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=143&Itemid=2" target="_blank">How to add custom proportions for module positions?</a></div>\r\n\r\n<br /><br />\r\n<h3 style="margin-top: 15px;">Left Column Layout</h3>\r\nThis template supports two different layout options. The "left" module position can be aligned to the left or the right. To chose between these two possible options goto the Joomla backend, open the template parameters and set the parameter "Layout Style" to "left" or "right".\r\n<br /><br />\r\n<div class="floatbox">\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Left aligned</h4>\r\n		<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_left.png" alt="Left aligned layout" title="Left aligned layout" width="270" height="270" />\r\n	</div>\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Right aligned</h4>\r\n		<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_right.png" alt="Right aligned layout" title="Right aligned layout" width="270" height="270" />\r\n	</div>\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2008-12-17 17:12:37', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 59, 0, 4, '', '', 0, 692, 'robots=\nauthor='),
(48, 'Dummy Content', 'dummy-content', '', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2008-10-02 11:28:25', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 5525, 'robots=\nauthor='),
(56, 'YOOaccordion', 'yooaccordion', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yooaccordion" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOaccordion" alt="YOOaccordion" src="images/yootheme/yooscroller/box_yooaccordion.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOaccordion</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:36', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 9, '', '', 0, 0, 'robots=\nauthor='),
(57, 'YOOdrawer', 'yoodrawer', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yoodrawer" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOdrawer" alt="YOOdrawer" src="images/yootheme/yooscroller/box_yoodrawer.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOdrawer</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:29', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 8, '', '', 0, 0, 'robots=\nauthor='),
(58, 'YOOcarousel', 'yoocarousel', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yoocarousel" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOcarousel" alt="YOOcarousel" src="images/yootheme/yooscroller/box_yoocarousel.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOcarousel</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:18', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 6, '', '', 0, 0, 'robots=\nauthor='),
(59, 'YOOslider', 'yooslider', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yooslider" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOslider" alt="YOOslider" src="images/yootheme/yooscroller/box_yooslider.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOslider</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:12', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 5, '', '', 0, 0, 'robots=\nauthor='),
(60, 'YOOtooltip', 'yootooltip', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n		<a href="http://tools.yootheme.com/extensions/yootooltip" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOtooltip" alt="YOOtooltip" src="images/yootheme/yooscroller/box_yootooltip.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOtooltip</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:41', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 10, '', '', 0, 0, 'robots=\nauthor='),
(61, 'YOOscroller', 'yooscroller', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yooscroller" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOscroller" alt="YOOscroller" src="images/yootheme/yooscroller/box_yooscroller.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOscroller</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:06', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(65, 'YOOmaps', 'yoomaps', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yoomaps" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOmaps" alt="YOOmaps" src="images/yootheme/yooscroller/box_yoomaps.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOmaps</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:09:23', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 7, '', '', 0, 0, 'robots=\nauthor='),
(62, 'YOOsearch', 'yoosearch', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yoosearch" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOsearch" alt="YOOsearch" src="images/yootheme/yooscroller/box_yoosearch.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOsearch</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:08:53', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(63, 'YOOgallery', 'yoogallery', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yoogallery" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOgallery" alt="YOOgallery" src="images/yootheme/yooscroller/box_yoogallery.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOgallery</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:08:48', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(64, 'YOOtweet', 'yootweet', '', '<div style="width: 200px; height: 200px; text-align:center">\r\n	<a href="http://tools.yootheme.com/extensions/yootweet" target="_blank">\r\n		<img class="correct-png" style="margin: 10px 0px 0px 0px;" width="175" height="175" title="YOOtweet" alt="YOOtweet" src="images/yootheme/yooscroller/box_yootweet.png"/>\r\n	</a>\r\n	<div style="margin: auto; margin-top: -30px; font-weight: bold; font-size: 14px;">YOOtweet</div>\r\n</div>', '', 1, 5, 0, 36, '2009-06-01 08:28:13', 62, '', '2009-06-01 09:08:41', 62, 0, '0000-00-00 00:00:00', '2009-06-01 08:28:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(23, 6),
(20, 7),
(5, 5),
(1, 1),
(27, 4),
(19, 2),
(18, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `__section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`section_id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`section_id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` text NOT NULL,
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(225) default NULL,
  `name` text,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(150) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- Extraindo dados da tabela `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Contato', 'joomla', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=6\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Welcome to the Frontpage\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(135, 'mainmenu', 'Category List', 'category-list', 'index.php?option=com_content&view=category&id=29', 'component', 1, 1, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=10\nshow_headings=1\nshow_date=1\ndate_format=\nfilter=1\nfilter_type=title\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(136, 'mainmenu', 'Section List', 'section-list', 'index.php?option=com_content&view=section&id=4', 'component', 1, 1, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', 0, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Help', 'joomla-help', 'http://help.joomla.org', 'url', 0, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(77, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 75, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(90, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 89, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(134, 'mainmenu', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=4', 'component', 1, 1, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=order\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(75, 'mainmenu', 'Drop Down Menu', 'drop-down-menu', 'index.php?option=com_content&view=article&id=48', 'component', 1, 54, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(76, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 75, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(148, 'mainmenu', 'Black', 'black', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=black', 'url', -2, 0, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_black.png\n\n', 0, 0, 0),
(149, 'mainmenu', 'SubOpção 1', 'pink', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=pink', 'url', 1, 155, 0, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(86, 'mainmenu', 'Separator', 'separator', '', 'separator', 0, 0, 0, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(87, 'mainmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 86, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(88, 'mainmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 86, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(89, 'othermenu', 'Sample Levels', 'deeper-levels-examples', 'index.php?option=com_content&view=article&id=48', 'component', 0, 0, 20, 0, 4, 62, '2007-12-21 16:40:26', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', 1, 1, 4, 1, 5, 62, '2008-12-17 14:58:33', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 1, 1, 11, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_limit=1\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\npage_title=Newsfeeds\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(145, 'mainmenu', 'Category Blog', 'category-blog', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', 1, 1, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=order\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, '', 0, 0, 0),
(53, 'mainmenu', 'Inicial', 'inicial', 'index.php?option=com_content&view=article&id=44', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(54, 'mainmenu', 'A Empresa', 'features', 'index.php?option=com_content&view=article&id=45', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'Produtos', 'typography', 'index.php?option=com_content&view=article&id=46', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'Serviços', 'layout', 'index.php?option=com_content&view=article&id=47', 'component', 1, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Module Variations', 'module-variations', 'index.php?option=com_content&view=article&id=48', 'component', 1, 56, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(80, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 75, 20, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(79, 'mainmenu', 'Level 5', 'level-5', 'index.php?option=com_content&view=article&id=48', 'component', 1, 78, 20, 4, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(78, 'mainmenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=48', 'component', 1, 77, 20, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(91, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 89, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(92, 'othermenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 0, 91, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(93, 'othermenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=48', 'component', 0, 92, 20, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(94, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 0, 89, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(95, 'othermenu', 'Accordion A', 'accordion-a', '', 'separator', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(96, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 95, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(97, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 95, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(98, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 95, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(99, 'othermenu', 'Accordion B', 'accordion-b', '', 'separator', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(100, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 99, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(101, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', 1, 99, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(107, 'mainmenu', 'Level 2', 'level-2', '', 'separator', 1, 86, 0, 1, 3, 62, '2008-07-10 15:21:21', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(108, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', 1, 107, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(111, 'mainmenu', 'SubOpção 2', 'stripes-2', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=stripes2', 'url', 1, 155, 0, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(114, 'mainmenu', 'Opção 2', 'blue', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=blue', 'url', 1, 53, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(118, 'mainmenu', 'Yellow', 'yellow', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=yellow', 'url', -2, 0, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_yellow.png\n\n', 0, 0, 0),
(127, 'mainmenu', 'Opção 4', 'white', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=white', 'url', 1, 53, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(123, 'topmenu', 'News', 'news', 'index.php?option=com_content&view=frontpage&Itemid=1', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(124, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=18:joomla-features&catid=29:the-cms&Itemid=145', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(125, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=1:welcome-to-joomla&catid=29:the-cms&Itemid=145', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(129, 'mainmenu', 'Opção 1', 'dove', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=dove', 'url', 1, 53, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(130, 'mainmenu', 'Moss Green', 'moss-green', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=mossgreen', 'url', -2, 0, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_mossgreen.png\n\n', 0, 0, 0),
(138, 'mainmenu', 'Poll', 'poll', 'index.php?option=com_poll&view=poll&id=14', 'component', 1, 1, 10, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(140, 'mainmenu', 'Contact Category', 'contact-category', 'index.php?option=com_contact&view=category&catid=12', 'component', 1, 1, 7, 1, 8, 62, '2008-12-15 14:35:54', 0, 0, 0, 0, 'display_num=20\nimage=clock.jpg\nimage_align=left\nshow_limit=1\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(141, 'mainmenu', 'Contact Item', 'contact-item', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 7, 1, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=1\nshow_category_crumb=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(142, 'mainmenu', 'Login', 'login', 'index.php?option=com_user&view=login', 'component', 1, 1, 14, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_login_title=1\nheader_login=\nlogin=\nlogin_message=1\ndescription_login=1\ndescription_login_text=\nimage_login=\nimage_login_align=right\nshow_logout_title=1\nheader_logout=\nlogout=\nlogout_message=1\ndescription_logout=1\ndescription_logout_text=\nimage_logout=articles.jpg\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(147, 'mainmenu', 'Opção 5', 'green', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=green', 'url', 1, 53, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(146, 'mainmenu', 'Turquoise', 'turquoise', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=turquoise', 'url', -2, 0, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_turquoise.png\n\n', 0, 0, 0),
(152, 'mainmenu', 'Halftones', 'halftones', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=halftones', 'url', -2, 0, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_halftones.png\n\n', 0, 0, 0),
(155, 'mainmenu', 'Opção 3', 'stripes-1', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=stripes1', 'url', 1, 53, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(225) NOT NULL default '',
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Other Menu', 'Additional links');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_messages`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` text NOT NULL,
  `cfg_value` text NOT NULL,
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`(100))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(150) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(150) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- Extraindo dados da tabela `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 0, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Enquete', '', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=concave\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'User Menu', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(18, 'Login Form', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Latest News', '', 1, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(20, 'Statistics', '', 16, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 0, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(21, 'Visitantes Online', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=window\n\n', 0, 0, ''),
(22, 'Popular', '', 2, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'moduleclass_sfx=\nshow_front=1\ncount=5\ncatid=\nsecid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(23, 'Archive', '', 17, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'count=10\nmoduleclass_sfx=\ncache=1\n\n', 1, 0, ''),
(24, 'Sections', '', 18, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'count=5\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(25, 'Newsflash', '', 1, 'content9', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 0, 'catid=49\nlayout=vert\nimage=1\nlink_titles=\nreadmore=1\nitem_title=1\nitems=4\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(26, 'Related Items', '', 19, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 0, 'search', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=Busca\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=Busca\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(28, 'Random Image', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, 'type=jpg\nfolder=\nlink=\nwidth=\nheight=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(29, 'Top Menu', '', 0, 'topmenu', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(30, 'Banners', '', 0, 'banner', 62, '2009-03-05 14:19:19', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(32, 'Wrapper', '', 20, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 21, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Breadcrumbs', '', 0, 'breadcrumbs', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'showHome=1\nhomeText=Home\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 1, 0, ''),
(36, 'Syndication', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(42, 'Sub Menu', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=1\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(154, 'Module Variations', 'This template comes with a wide variety of module stylings in many different shapes and colours.\r\n<p>\r\nTake a look at all the <a href="index.php?option=com_content&view=article&id=48&Itemid=58">different module variations</a>.\r\n</p>', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://forum.joomla.org/index.php/topic,47524.0.html" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/index.php/board,8.0.html" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/index.php/board,267.0.html" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(46, 'YOOlogin (Default)', '', 0, 'content1', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=default\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=text\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(177, 'Slide Show', '<object width="100%" height="250" type="application/x-shockwave-flash" data="monoslideshow.swf">\r\n<param name="src" value="monoslideshow.swf" />\r\n<param name="wmode" value="transparent" />\r\n<param name="flashvars" value="showLogo=false&amp;dataFile=slideshow.xml.php" />\r\n</object>', 0, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=-blank\r\n\r\n', 0, 0, ''),
(52, 'Content Top 1', 'Set Module Class Suffix of the Module properties to "concave" to show up like this.', 1, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(53, 'Content Top 2', 'Set Module Class Suffix of the Module properties to "concave" to show up like this.', 2, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(183, 'Contato', '<p><img src="images/stories/contato.png" border="0" alt="Produtos" title="Produtos" hspace="6" vspace="6" align="left" /><span style="font-size:14px;font-weight:bold">Contato:</span> Entre em contato conosco para orçamentos sem compromisso.</p>', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=window\n\n', 0, 0, ''),
(155, 'Javascript Library', 'All client side effects use the JavaScript framework <a href="http://www.mootools.net" target="_blank">MooTools</a> which offers most reliable functionality and compact size!\r\n<p>\r\nWhich Mootools version is used? Check out the <a target="_blank" href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=92&Itemid=2">MooTools version guide</a>.\r\n</p>', 1, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(56, 'YOOlogin (Quick)', '', 1, 'header', 0, '0000-00-00 00:00:00', 0, 'mod_yoo_login', 0, 0, 0, 'style=niftyquick\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=icon\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(57, 'Content Bottom 1', 'Set Module Class Suffix of the Module properties to "window" to show up like this.', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=window\n\n', 0, 0, ''),
(58, 'Skyscraper', '<img class="correct-png" src="images/yootheme/banner_skyscraper.png" title="Place your banner here!" alt="Place your banner here!" />', 2, 'banner', 62, '2009-03-05 14:19:22', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(59, 'Content Bottom 2', 'Set Module Class Suffix of the Module properties to "window" to show up like this.', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=window\n\n', 0, 0, ''),
(60, 'Badge', '<img class="correct-png" src="images/yootheme/banner_badge.png" title="WEB 2.0 inside!" alt="WEB 2.0 inside!" style="position: absolute; top: 0px; left: 0px;" />', 3, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(61, 'Bottom 1', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "separator" to show up like this.', 0, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(132, 'YOOtorials', '<a href="http://tutorials.yootheme.com" target="_blank" style="display: block; text-align: center">\r\n  <img class="correct-png" width="100" height="125" title="Take a look at the YOOtheme video tutorials" alt="Take a look at the YOOtheme video tutorials" src="images/yootheme/yootorials.png"/>\r\n</a>', 6, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=concave\n\n', 0, 0, ''),
(115, 'YOOtools', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="55" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_yootools.png" />This template is fully compatible with all <a href="http://www.yootools.com" target="_blank">YOOtools</a>\r\n</div>', 3, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(62, 'Bottom  2', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "separator" to show up like this.', 2, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(114, 'Native 1.5 Version', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="42" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_joomla.png" />This template is only available as native version for Joomla 1.5.\r\n</div>', 0, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(63, 'Bottom  3', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "separator" to show up like this.', 3, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(64, 'Bottom  4', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "separator" to show up like this.', 4, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(113, 'Sliced Fireworks Files', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="42" height="40" align="right" title="Fully sliced Fireworks .png files" alt="Fully sliced Fireworks .png files" src="images/yootheme/top_fireworks.png" />Fully sliced Fireworks PNGs for customizations.\r\n</div>', 2, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(68, 'Left Module', 'Set Module Class Suffix of the Module properties to "postit" to show up like this.', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=postit\n\n', 0, 0, ''),
(70, 'Module Class Suffixes', 'Possible Module Class Suffixes are:\r\n<ul>\r\n	<li>line</li>\r\n	<li>grey</li>\r\n	<li>rounded</li>\r\n	<li>angled</li>\r\n	<li>separator</li>\r\n	<li>window</li>\r\n	<li>concave</li>\r\n	<li>polaroid</li>\r\n	<li>postit</li>\r\n	<li>blank</li>\r\n</ul>\r\nMost of these Module Class Suffixes can be combined with following suffixes to get a badge:\r\n<ul>\r\n	<li>new</li>\r\n	<li>top</li>\r\n	<li>pick</li>\r\n	<li>circle</li>\r\n</ul>\r\nExample Module Class Suffix code: "grey circle"', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=grey circle\n\n', 0, 0, ''),
(89, 'Top', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Set Module Class Suffix of the Module properties to "rounded new" to show up like this.', 0, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=rounded new\n\n', 0, 0, ''),
(72, 'Logo', '<p><a href="index.php" title="Home"><img class="correct-png" src="images/logo_site_redondo.png" border="0" alt="Logo" width="314" height="141" /></a></p>', 0, 'logo', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(136, 'Sample Flags', '<img src="images/yootheme/toolbar_flags.png" class="correct-png" width="123" height="15" alt="Languages" style="margin-top: 3px;" />', 0, 'toolbar', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(73, 'Right Module', 'Set Module Class Suffix of the Module properties to "line" to show up like this.', 5, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(74, 'Badge Suffixes', 'Most of these Module Class Suffixes can be combined with following suffixes to get a badge:  <ul> <li>new</li> <li>top</li> <li>pick</li> </ul> Example Module Class Suffix code: "grey new"', 4, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(75, 'Top 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do. Set Module Class Suffix of the Module properties to "rounded" to show up like this.', 4, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(76, 'Top 2', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "rounded" to show up like this.', 5, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(77, 'Top 3', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "rounded top" to show up like this.', 6, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=rounded top\n\n', 0, 0, ''),
(78, 'Top 4', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "rounded pick" to show up like this.', 7, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=rounded pick\n\n', 0, 0, ''),
(121, 'Bottom (YOOtools)', '<center>\r\n<a href="http://tools.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 10px" src="images/yootheme/bottom_yootools.png" alt="Visit the YOOtools website!" title="Visit the YOOtools website!" width="127" height="33" />\r\n</a>\r\n</center>', 6, 'bottom-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(122, 'Template Features', 'This templates comes with a lot of Web 2.0 features.\r\n<p class="readmore"><a class="readmore" href="index.php?option=com_content&view=article&id=45&Itemid=54">Read more...</a></p>', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(123, 'Template Typo', 'This templates delivers you sophisticated typography.\r\n<p class="readmore"><a class="readmore" href="index.php?option=com_content&view=article&id=46&Itemid=55">Read more...</a></p>', 9, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=dogear\n\n', 0, 0, ''),
(82, 'Rodapé', '<div style="margin-top: 9px">Rua Max Colin, sn - América - Joinville - Santa Catarina - Fone: (47) 3473-9988 (24 Horas)<br />Desenvolvido por <a href="http://www.devhouse.com.br" target="_blank">DevHouse</a></div>', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(180, 'Produtos', '<p><img src="images/stories/produtos.png" border="0" alt="Produtos" title="Produtos" hspace="6" vspace="6" align="left" /><span style="font-size:14px;font-weight:bold">Produtos:</span> Conheça nossa linha de produtos para monitoramento eletrônico.</p>', 3, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=window\n\n', 0, 0, ''),
(83, 'Main Top 1', '<div style="overflow: hidden">\r\n<img style="margin: 0px 10px 0px 0px" class="correct-png" src="images/yootheme/module_monitor.png" alt="" align="left" />Lorem ipsum dolor sit amet, consectetur. Set Module Class Suffix of the Module properties to "rounded" to show up like this.\r\n</div>', 3, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(158, 'Bottom (YOOtorials)', '<center>\r\n<a href="http://tutorials.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 10px" src="images/yootheme/bottom_yootorials.png" border="0" alt="Visit the YOOtorials website!" title="Visit the YOOtorials website!" width="145" height="33" />\r\n</a>\r\n</center>', 7, 'bottom-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(87, 'Other Menu', '', 8, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(84, 'Main Top 2', '<div style="overflow: hidden">\r\n<img style="margin: 0px 10px 0px 0px" class="correct-png" src="images/yootheme/module_trash.png" alt="" align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Set Module Class Suffix of the Module properties to "rounded" to show up like this.\r\n</div>', 4, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=rounded\n\n', 0, 0, ''),
(85, 'Main Bottom 1', '<div style="overflow: hidden;"><img style="margin: 10px 10px 0px 0px" class="correct-png" src="images/yootheme/module_hi.png" alt=" " align="left" /> Lorem ipsum dolor sit amet, consectetur. Set Module Class Suffix of the Module properties to "rounded" to show up like this.</div>', 0, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(86, 'Main Bottom 2', '<div style="overflow: hidden;"><img style="margin: 10px 10px 0px 0px" class="correct-png" src="images/yootheme/module_paper.png" alt=" " align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Set Module Class Suffix of the Module properties to "rounded" to show up like this.</div>', 0, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(117, 'YOOcarousel (Frontpage)', '', 0, 'main-top-equal', 0, '0000-00-00 00:00:00', 0, 'mod_yoo_carousel', 0, 0, 0, 'catid=35\nstyle=slideshow\nmodule_width=644\nmodule_height=184\ntab_width=200\nautoplay=on\nslide_interval=5000\ntransition_duration=300\ntransition_effect=crossfade\ncontrol_panel=none\nrotate_action=mouseover\nrotate_duration=300\nrotate_effect=crossfade\nbuttons=1\norder=rnd\nreadmore=0\nitems=10\nmoduleclass_sfx=border\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(91, 'Bottom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Set Module Class Suffix of the Module properties to "rounded" to show up like this.', 0, 'bottom', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(182, 'A Empresa', '<p><img src="images/stories/empresa.jpg" border="0" alt="Produtos" title="Produtos" hspace="6" vspace="6" align="left" /><span style="font-size:14px;font-weight:bold">A Empresa:</span> Saiba mais sobre nossa empresa, nossa missão, visão, valores e estrutura.</p>', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=window\n\n', 0, 0, ''),
(181, 'Serviços', '<p><img src="images/stories/servios.jpg" border="0" alt="Produtos" title="Produtos" hspace="6" vspace="6" align="left" /><span style="font-size:14px;font-weight:bold">Serviços:</span> Conheça nossos serviços em vigilância eletrônica e segurança de eventos.</p>', 6, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=window\n\n', 0, 0, ''),
(125, 'YOOsearch', '', 2, 'search', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_search', 0, 0, 0, 'style=default\nbox_width=400\nchar_limit=130\nres_limit=6\ncat_limit=6\ncategories={cat\\ntitle=[YOOtheme]\\nimage=[yootheme/yoosearch/yootheme.png]\\nurl=[http://www.yootheme.com]\\nkeywords=[yootheme, template, templates, themes, theme]\\n}The YOOtheme template club for Joomla 1.0 and 1.5 offers stylish templates with professional Web 2.0 features.{/cat}\\n\\n{cat\\ntitle=[YOOtools]\\nimage=[yootheme/yoosearch/yootools.png]\\nurl=[http://www.yootools.com]\\nkeywords=[yootheme, yootools, features, feature, yoospotlight, yooreflection, yoolightbox, yoocarousel, yooaccordion, yooslider, yoodrawer, yooscroller, yoomaps, yoosearch, yooeffects, yootoppanel, yoologin, yootooltip, yoosnapshots, spotlight, reflection, lightbox, carousel, accordion, slider, drawer, scroller, maps, search, effects, toppanel, login, tooltip, snapshots]}The YOOtools are new YOOtheme extensions for Joomla 1.0 and 1.5. Exclusive YOOtheme modules, compontent and plugins!{/cat}\\n\\n{cat\\ntitle=[Typography]\\nurl=[index.php?option=com_content&view=article&id=46&Itemid=55]\\nimage=[yootheme/yoosearch/typography.png]\\nkeywords=[typography, joomla, style, stylings, HTML, tag]\\n}Take a look at the typography, the style guide and learn all about the possible HTML tag stylings of this YOOtheme templates.{/cat}\\n\\n{cat\\ntitle=[Layout]\\nimage=[yootheme/yoosearch/layout.png]\\nurl=[index.php?option=com_content&view=article&id=47&Itemid=56]\\nkeywords=[layout, joomla, module, position, positions, variation, variations]\\n}Take a look at the layout options and all possible module positions and variations of this YOOtheme template.{/cat}\\n\\n{cat\\ntitle=[Joomla]\\nimage=[yootheme/yoosearch/joomla.png]\\nurl=[index.php?option=com_content&view=frontpage&Itemid=1]\\nkeywords=[joomla]\\n}Take a look at how this YOOtheme template styles the Joomla core articles, components and modules.{/cat}\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(118, 'Bottom (YOOtheme)', '<center>\r\n<a href="http://www.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 10px" src="images/yootheme/bottom_yootheme.png" border="0" alt="Visit the YOOtheme website!" title="Visit the YOOtheme website!" width="150" height="33" />\r\n</a>\r\n</center>', 5, 'bottom-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(124, 'Template Layout', 'This template supports a wide variety of module positions and variations.\r\n<p class="readmore"><a class="readmore" href="index.php?option=com_content&view=article&id=48&Itemid=58">Read more...</a></p>', 7, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=dogear\n\n', 0, 0, ''),
(134, 'YOOiecheck', '', 15, 'absolute', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_iecheck', 0, 0, 0, 'message=You are using Internet Explorer 6. Please upgrade your browser to increase safety and your browsing experience. Choose one of the following links to download a modern browser:\nfirefox=1\nsafari=1\nopera=1\nie=1\nmoduleclass_sfx=-blank\n\n', 0, 0, ''),
(151, 'Fireworks Files', '<div style="overflow: hidden;">\r\n<img height="40" width="42" align="right" src="/YOOtheme/Templates/Next/Website/images/yootheme/top_fireworks.png" alt="Fully sliced Fireworks .png files" title="Fully sliced Fireworks .png files" style="margin-left: 10px;" class="correct-png"/>Fully sliced Fireworks PNGs for customizations.\r\n</div>', 5, 'main-top-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(150, 'YOOtools', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="55" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_yootools.png" />This template is fully compatible with all <a href="http://www.yootools.com" target="_blank">YOOtools</a>\r\n</div>', 6, 'main-top-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(168, 'Latest YOOtheme Tweet', '', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 0, 'mod_yoo_tweet', 0, 0, 1, 'style=single\nfrom_user=yootheme\nto_user=\nref_user=\nhashtag=\nword=\nimage=1\nauthor=0\ndate=0\nimage_size=48\nnum_tweets=1\nmoduleclass_sfx=blank\ncache=0\ncache_time=15\n\n', 0, 0, ''),
(173, 'YOOscroller', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_yoo_scroller', 0, 0, 0, 'catid=36\nstyle=blank-h\nmodule_width=860\nmodule_height=215\nslide_size=215\nslide_interval=4000\nautoplay=1\norder=o_asc\nreadmore=0\nitems=10\nmoduleclass_sfx=-blank\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(174, 'ZOO - A CCK for Joomla!', '<a style="float: right; display: block; margin-left: 10px;" href="http://zoo.yootheme.com/images/stories/videos/zoo_video_tour.flv" rel="shadowbox;width=872;height=480" title="ZOO - A CCK or Joomla!"><img src="images/yootheme/home_video_tour.png" width="220" height="100" title="Take the video tour on the ZOO!" alt="Take the video tour on the ZOO!" /></a>\r\n\r\nThe ZOO extension is a very versatile catalog system for Joomla which allows you to create different catalogs for all purposes. It comes with a comprehensive content construction kit (CCK) which gives you the ability to create your very own custom content types. Visit <a href="http://zoo.yootheme.com" target="_blank">website...</a>', 7, 'main-top-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(175, 'Teamlog - Free web based Time Tracking', '<a style="float: right; display: block; margin: -25px 0px 0px 10px;" href="http://teamlog.yootheme.com" title="Teamlog - Free web based Time Tracking Solution" target="_blank"><img src="images/yootheme/home_teamlog.png" class="correct-png" width="83" height="110" title="Teamlog - Free web based Time Tracking Solution" alt="Teamlog - Free web based Time Tracking Solution" /></a>\r\n\r\nThe Teamlog extension offers a solution to easily track time of different projects and tasks and further to provide reports of the gathered project data. It comes with a very smart user interface and is really useful if you work for example in small web development teams. <a href="http://teamlog.yootheme.com" target="_blank">Get the Teamlog for free here...</a>', 0, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(178, 'Atendimento Online', '<div style="color:#777;font-size:14px;font-weight:bold;margin:8px 40px 0px 0px;vertical-align:middle; line-height:50px;"> \r\n    <ul class="menu" id="mhelper" style="list-style:none;margin:0px 0px 0px 0px;"> \r\n        <li class="parent item29"> \r\n            <a href="#" style="color:#777;text-decoration:none"> \r\n                <img src="images/atendimento_online.png" height="50" align="left" style="margin-bottom:0px;" border="0" /> \r\n                Atendimento&nbsp;Online\r\n            </a> \r\n        </li> \r\n    </ul>         \r\n</div> ', 0, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\r\n\r\n', 0, 0, ''),
(179, 'Twitter', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_tweet', 0, 0, 1, 'style=list\nfrom_user=leolimaweb\nto_user=\nref_user=\nhashtag=\nword=\nimage=1\nauthor=1\ndate=1\nimage_size=48\nnum_tweets=5\nmoduleclass_sfx=rounded\ncache=0\ncache_time=15\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 0),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(19, 27),
(19, 50),
(21, 53),
(22, 1),
(22, 2),
(22, 27),
(22, 50),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 1),
(35, 20),
(35, 24),
(35, 48),
(35, 49),
(35, 51),
(35, 52),
(35, 54),
(35, 55),
(35, 56),
(35, 58),
(35, 75),
(35, 76),
(35, 77),
(35, 78),
(35, 79),
(35, 80),
(35, 95),
(35, 96),
(35, 97),
(35, 98),
(35, 99),
(35, 100),
(35, 101),
(35, 111),
(35, 114),
(35, 123),
(35, 124),
(35, 125),
(35, 127),
(35, 129),
(35, 134),
(35, 135),
(35, 136),
(35, 138),
(35, 140),
(35, 141),
(35, 142),
(35, 145),
(35, 147),
(35, 149),
(35, 155),
(36, 0),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(42, 1),
(42, 48),
(42, 49),
(42, 53),
(42, 56),
(42, 58),
(42, 135),
(42, 136),
(42, 138),
(42, 140),
(42, 141),
(42, 142),
(46, 0),
(52, 58),
(53, 58),
(56, 0),
(57, 58),
(58, 58),
(59, 58),
(60, 1),
(60, 20),
(60, 24),
(60, 48),
(60, 49),
(60, 51),
(60, 52),
(60, 53),
(60, 54),
(60, 55),
(60, 56),
(60, 95),
(60, 96),
(60, 97),
(60, 98),
(60, 99),
(60, 100),
(60, 101),
(61, 58),
(62, 58),
(63, 58),
(64, 58),
(68, 58),
(70, 56),
(70, 58),
(72, 0),
(73, 58),
(74, 58),
(75, 58),
(76, 58),
(77, 58),
(78, 58),
(82, 0),
(83, 58),
(84, 58),
(85, 58),
(86, 58),
(87, 53),
(89, 58),
(91, 58),
(113, 54),
(114, 54),
(115, 54),
(117, 53),
(117, 111),
(117, 114),
(117, 118),
(117, 127),
(117, 129),
(117, 130),
(117, 146),
(117, 147),
(117, 148),
(117, 149),
(118, 1),
(118, 20),
(118, 24),
(118, 48),
(118, 49),
(118, 51),
(118, 52),
(118, 53),
(118, 54),
(118, 55),
(118, 56),
(118, 95),
(118, 96),
(118, 97),
(118, 98),
(118, 99),
(118, 100),
(118, 101),
(118, 134),
(118, 135),
(118, 136),
(118, 138),
(118, 140),
(118, 141),
(118, 142),
(118, 145),
(121, 1),
(121, 20),
(121, 24),
(121, 48),
(121, 49),
(121, 51),
(121, 52),
(121, 53),
(121, 54),
(121, 55),
(121, 56),
(121, 95),
(121, 96),
(121, 97),
(121, 98),
(121, 99),
(121, 100),
(121, 101),
(121, 134),
(121, 135),
(121, 136),
(121, 138),
(121, 140),
(121, 141),
(121, 142),
(121, 145),
(122, 53),
(123, 53),
(124, 53),
(125, 0),
(132, 53),
(134, 0),
(136, 0),
(150, 53),
(151, 53),
(154, 54),
(155, 54),
(158, 1),
(158, 20),
(158, 24),
(158, 48),
(158, 49),
(158, 51),
(158, 52),
(158, 53),
(158, 54),
(158, 55),
(158, 56),
(158, 95),
(158, 96),
(158, 97),
(158, 98),
(158, 99),
(158, 100),
(158, 101),
(158, 134),
(158, 135),
(158, 136),
(158, 138),
(158, 140),
(158, 141),
(158, 142),
(158, 145),
(168, 53),
(168, 111),
(168, 114),
(168, 118),
(168, 127),
(168, 129),
(168, 130),
(168, 146),
(168, 147),
(168, 148),
(168, 149),
(173, 53),
(173, 111),
(173, 114),
(173, 118),
(173, 127),
(173, 129),
(173, 130),
(173, 146),
(173, 147),
(173, 148),
(173, 149),
(173, 152),
(173, 155),
(173, 156),
(174, 53),
(174, 111),
(174, 114),
(174, 118),
(174, 127),
(174, 129),
(174, 130),
(174, 146),
(174, 147),
(174, 148),
(174, 149),
(174, 152),
(174, 155),
(174, 156),
(175, 53),
(175, 111),
(175, 114),
(175, 118),
(175, 127),
(175, 129),
(175, 130),
(175, 146),
(175, 147),
(175, 148),
(175, 149),
(175, 152),
(175, 155),
(175, 156),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0),
(4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0),
(6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `element` text NOT NULL,
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Extraindo dados da tabela `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(35, 'YOOeffects', 'yoo_effects', 'system', 0, 0, 1, 0, 0, 62, '2008-03-27 22:08:03', 'lightbox=1\nreflection=1\nspotlight=1\ngzip=1\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(90) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(4, 'Joomla!', '', 'joomla', 'powered_by.png', 'content', 'right', 'As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.', 1, 0, '0000-00-00 00:00:00', 1, 0, 21, ''),
(5, 'YOOtheme', '', 'yootheme', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 22, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(150) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1473167948', 'e97a20737fe8da760273e1e1295bf958', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:7;s:19:"session.timer.start";i:1473165831;s:18:"session.timer.last";i:1473167939;s:17:"session.timer.now";i:1473167948;s:22:"session.client.browser";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:67:"C:\\ServidorWEB\\www\\Prothege\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('admin', '1473167920', '7528559d468fec5ca8139edea332d1b0', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:30;s:19:"session.timer.start";i:1473167287;s:18:"session.timer.last";i:1473167920;s:17:"session.timer.now";i:1473167920;s:22:"session.client.browser";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:3:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:9:"com_menus";a:1:{s:4:"data";O:8:"stdClass":1:{s:8:"menutype";s:8:"mainmenu";}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":25:{s:2:"id";i:62;s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:23:"contato@prothege.com.br";s:8:"password";s:65:"d22b4e0d8e8cef967162c0c10d84c222:Uvj9U8ZGybROYnec9NLQ5Na7UukRzfIR";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2009-07-23 15:18:38";s:13:"lastvisitDate";s:19:"2016-09-06 13:11:25";s:10:"activation";s:0:"";s:6:"params";s:57:"admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=-3\n\n";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:67:"C:\\ServidorWEB\\www\\Prothege\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":5:{s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:2:"-3";}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}s:9:"password2";s:0:"";s:3:"cid";a:1:{i:0;s:2:"62";}s:6:"option";s:9:"com_users";s:4:"task";s:4:"save";s:10:"contact_id";s:0:"";s:32:"ea5ef0de7920000a5f1c4f66b14cd946";s:1:"1";}s:13:"session.token";s:32:"a3fe168df8a6079c2a0d12bacb3da36f";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` text NOT NULL,
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('prothege', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(75) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`(255)),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Extraindo dados da tabela `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'contato@prothege.com.br', 'd22b4e0d8e8cef967162c0c10d84c222:Uvj9U8ZGybROYnec9NLQ5Na7UukRzfIR', 'Super Administrator', 0, 1, 25, '2009-07-23 15:18:38', '2016-09-06 13:11:25', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=-3\n\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');
