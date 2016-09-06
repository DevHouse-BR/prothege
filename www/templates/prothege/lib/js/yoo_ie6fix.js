/* Copyright (C) 2007 - 2009 YOOtheme GmbH */

function loadIE6Fix() {

	correctPngBackground('.correct-png', 'crop');
	
	/* layout */
	fixPngBackground('.page-body-t');
	fixPngBackground('#toolbar, #toolbar .toolbar-1, #toolbar .toolbar-2');
	fixPngBackground('#menubar, #menubar .menubar-1, #menubar .menubar-2');
	fixPngBackground('.shadow-l, .shadow-r');
	fixPngBackground('#top, #top .top-t, .middle-b, #bottom, #bottom .bottom-b');
	fixPngBackground('#footer, #footer .footer-1, #footer .footer-2');
		
	/* typography & joomla */
	fixPngBackground('ul.arrow li, ul.checkbox li, ul.check li, ul.star li');
	fixPngBackground('blockquote.quotation, blockquote.quotation p');
	fixPngBackground('ol.disc');
	fixPngBackground('a.readmore, a.readon');

	/* menu */
	fixPngBackground('div#menu li.active a.level1');
	
	/* modules */
	fixPngBackground('div.module div.badge-new, div.module div.badge-top, div.module div.badge-pick, div.module div.badge-circle');
	fixPngBackground('div.mod-rounded-header div.box-1, div.mod-rounded-header div.box-2, div.mod-rounded-header div.box-3');
	fixPngBackground('div.mod-polaroid div.box-b1, div.mod-polaroid div.box-b2, div.mod-polaroid div.box-b3, div.mod-polaroid div.badge-tape');
	fixPngBackground('div.mod-postit div.box-b1, div.mod-postit div.box-b2, div.mod-postit div.box-b3');
	fixPngBackground('div.mod-rounded div.box-t1, div.mod-rounded div.box-t2, div.mod-rounded div.box-t3, div.mod-rounded div.box-1, div.mod-rounded div.box-2, div.mod-rounded div.box-b1, div.mod-rounded div.box-b2, div.mod-rounded div.box-b3');
	fixPngBackground('div.mod-concave div.box-t1, div.mod-concave div.box-t2, div.mod-concave div.box-b1, div.mod-concave div.box-b2');
	fixPngBackground('div.mod-window div.box-t1, div.mod-window div.box-t2, div.mod-window div.box-t3, div.mod-window div.box-1, div.mod-window div.box-2, div.mod-window div.box-b1, div.mod-window div.box-b2, div.mod-window div.box-b3');
	fixPngBackground('div.mod-grey div.box-t1, div.mod-grey div.box-t2, div.mod-grey div.box-t3, div.mod-grey div.box-1, div.mod-grey div.box-2, div.mod-grey div.box-b1, div.mod-grey div.box-b2, div.mod-grey div.box-b3');
	fixPngBackground('.separator div.mod-separator div.box-1, .separator div.mod-separator div.box-2, .separator div.mod-separator div.box-3');

	/* extensions */
	fixPngBackground('#top div.blank-h div.yoo-scroller div.scrollarea, #top div.blank-h div.yoo-scroller div.scrollarea-l');

	sfHover('#menu span.separator');
	sfHover('#menu li');
	sfHover('.module .menu span.separator');
	sfHover('.module .menu li');

	DD_belatedPNG.fix('.png_bg');
}

/* Add functions on window load */
window.addEvent('domready', loadIE6Fix);
window.addEvent('load', correctPngInline);

/* Fix PNG background */
function fixPngBackground(selector) {
	$ES(selector).each(function(element){
		element.addClass('png_bg');
	});
}