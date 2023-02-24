$(document).ready(function() {

// -------------- СВОРАЧИВАНИЕ ТЕКСТА (wTextSlicer) ---------------------------------
$('.fs__descr--text').wTextSlicer({
	height: '220',
	maXheight: '220',
	textExpand: 'Развернуть описание',
	textHide: 'Свернуть описание'
});
$('.calendar-table').wTextSlicer({
	height: '220',
	maXheight: '220',
	textExpand: 'Развернуть',
	textHide: 'Свернуть'
});
$('.page__descr--content').wTextSlicer({
	height: '160',
	maXheight: '160',
	textExpand: "Развернуть",
	textHide: "Свернуть"
});
$('.fran').wTextSlicer({
	height: '180',
	maXheight: '200',
	textExpand: "Развернуть",
	textHide: "Свернуть"
});


// -------------- LOG-IN ---------------------------------
$('body').on('click','.login-tgl',function(){
	if ( $('.login-overlay').length < 1 ) {
		$('.login__box').before('<div class="login-overlay"></div>');
		$('.login__box').prepend('<i class="login__close icon-close"></i>');
	};
	$('.login__box, .login-overlay').fadeIn(200);
	return false;
});
$('body').on('click','.login-overlay, .login__close',function(){
	$('.login__box, .login-overlay').fadeOut(200);
});

// -------------- ПОЯВЛЕНИЕ ФИЛЬТРА ---------------------------------
$('.filter-toogle').on('click', function(){
	$('.filter').toggleClass('filter-tgd');
	$('.global__right').toggleClass('global-tgd');
	$('.global__left').toggleClass('global-tgd');
});

// -------------- ПОЯВЛЕНИЕ МОБИЛЬНОГО МЕНЮ ---------------------------------
$('.menu-toggle').on('click', function(){
	$('.global__left').toggleClass('global__left-tgd');
	$('.global__right').toggleClass('global-tgd');
});

// -------------- РЕЙТИНГ НОВОСТИ ---------------------------------
$('.frate').each(function(){
	var rate = $(this),
	rdata = rate.find('.rate-data'),
	rrate = parseInt(rdata.find('.ratingtypeplusminus').text(), 10),
	rvote = parseInt(rdata.find('span[id*=vote]').text(), 10);
	rate.append('<div class="rbar"><div class="rfill"></div></div>');
	if ( rvote >= rrate && rvote > 0 ) {
		var m = (rvote - rrate)/2, 
		p = rvote - m,
		perc = Math.round(p/rvote*100);
		rate.find('.rate-plus span.rate-value').html(p);
		rate.find('.rate-minus span.rate-value').html(m);
		rate.find('.rfill').css({'width':''+perc+'%'});
	};
});

// -------------- ТАБЫ ---------------------------------
$('ul.tabs__caption').each(function(i) {
	var storage = localStorage.getItem('tab' + i);
	if (storage) {
		$(this).find('li').removeClass('active').eq(storage).addClass('active')
		.closest('div.tabs').find('div.tabs__content').removeClass('active').attr('aria-hidden',true).eq(storage).addClass('active').attr('aria-hidden',false);
	}
});

$('ul.tabs__caption').on('click', 'li:not(.active)', function() {
	$(this)
	.addClass('active').siblings().removeClass('active')
	.closest('div.tabs').find('div.tabs__content').removeClass('active').attr('aria-hidden',true).eq($(this).index()).addClass('active').attr('aria-hidden',false);
	var ulIndex = $('ul.tabs__caption').index($(this).parents('ul.tabs__caption'));
	localStorage.removeItem('tab' + ulIndex);
	localStorage.setItem('tab' + ulIndex, $(this).index());
});

// -------------- КАДРЫ MAGNIFIC POPUP ---------------------------------
$('.cadre__item').magnificPopup({
	type:'image',
	gallery: {enabled:true},
	zoom: {enabled: true},
	removalDelay: 300,
	mainClass: 'mfp-fade'
});
$('.ajax-popup-link').magnificPopup({
  type: 'ajax'
});
// -------------- ЯКОРЯ ---------------------------------
$('a[href^="#"').on('click', function() {
	let href = $(this).attr('href');
	$('html, body').animate({
		scrollTop: $(href).offset().top
	});
	return false;
});

// -------------- СТИЛИЗАЦИЯ ФИЛЬТРА ---------------------------------
$(".js-range-slider").ionRangeSlider();

$(".filter__select").chosen({
	no_results_text: "Ничего не найдено:",
	width: "100%",
	allow_single_deselect: true,
	search_contains: true
});

// -------------- AJAX нижние страницы --------------------------------------------------------------
$('body').on('click','#nav-load a',function(){
	var urlNext = $(this).attr('href');
	var scrollNext = $(this).offset().top - 200;
	if (urlNext !== undefined) {
		$.ajax({
			url: urlNext,
			beforeSend: function() {
				ShowLoading('');
			},            
			success: function(data) {
				$('#bottom-nav').remove();
				$('#dle-content').append($('#dle-content', data).html());
				$('#dle-content').after($('#bottom-nav'));
				window.history.pushState("", "", urlNext);
				$('html, body').animate({scrollTop:scrollNext}, 800);    
				HideLoading('');
			},
			error: function() {                
				HideLoading('');
				alert('что-то пошло не так');
			}
		});
	};
	return false;
});

// ----------------------------------------------
$('.spoiler-title').click(function(){ 
	$(this).parent().children('div.spoiler-content').toggle('fast');
	return false;
});

$('#comment-editor').click(function(){ 
	$('.c-captcha').css({'display':'flex'});
	return false;
});

$('.error__title--i').click(function(){ 
	$(this).closest('.error').hide(100);
	return false;
});

var counter			= 1;
var NumberOfPics	= 2 + 1;
var pause			= 1000;
var nodeFavicon		= document.getElementsByTagName("link");
function animateFavicon() {
    for (var i = 0; i < nodeFavicon.length; i++)
    {
        if((nodeFavicon[i].getAttribute("rel") == "shortcut icon") || (nodeFavicon[i].getAttribute("rel") == "icon"))
        {
			nodeFavicon[i].setAttribute("href", "/templates/new/images/favicons/" + counter + ".ico");
        }
    }
 if (counter < NumberOfPics) {
  setTimeout(animateFavicon, pause);
  counter++;
  if (counter == NumberOfPics) { counter = 1; }
 }
}
animateFavicon();
})

function epscapeShowHide(){
	$(".epscape_tr").css('display', '');
	$("#epscape_showmore").html('');
	return false;
}

function ShowOrHideEp(a, el) {
	var c = $("#" + a);
	a = document.getElementById("image-" + a) ? document.getElementById("image-" + a) : null;
	var b = c.height() / 200 * 1E3;
	3E3 < b && (b = 3E3);
	250 > b && (b = 250);
	"none" == c.css("display") ? $("#showhide_"+el).html("свернуть") : $("#showhide_"+el).html("развернуть");
	"none" == c.css("display") ? (c.show("blind", {}, b), a && (a.src = dle_root + "templates/" + dle_skin + "/dleimages/spoiler-minus.gif")) : (2E3 < b && (b = 2E3), c.hide("blind", {}, b), a && (a.src = dle_root + "templates/" + dle_skin + "/dleimages/spoiler-plus.gif"))
}

// -------------- ДОБАВЛЕНИЕ В ЗАКЛАДКИ ГОСТЕМ --------------------------------------------------------------
function alertDLE() {
	$(function(){
		$('#alertreg').dialog({
			autoOpen: true,
			width: 450,
			buttons: { "ok" : function() { $(this).dialog("close"); }}
		});
	});
}



if (document.documentElement.clientWidth < 992) {
	$(document).ready(function() {
		$('.menu__li-dropdown').on('click', function(){
			$('.menu__dropdown--wrap',this).toggleClass('menu__dropdown--wrap-tgd');
		});
	});
};
// -------------- ПОСТЕР СДВИГАНИЕ / РАЗДВИГАНИЕ ---------------------------------
if (document.documentElement.clientWidth < 767) {
	$(document).ready(function() {
		$('.fs__poster-block').on('click', function(){
			$('.fs__xfs').toggleClass('fs__xfs-tgd');
		});
	});
};

// -------------- СКОЛЬЖЕНИЕ КОММЕНТАРИЕВ ---------------------------------
if (document.documentElement.clientWidth > 767) {
	$(document).ready(function() {
		$(function(){
			$nav = $('.addcomment_is>#dle-comments-form');
			$nav.css('width', $nav.outerWidth());
			$window = $(window);
			$h = $nav.offset().top;
			$window.scroll(function(){
				if ($window.scrollTop() > $h) {
					$nav.css({ "position": "fixed", "top": "100px" });
				} else {
					$nav.css({ "position": "relative", "top": "0" });
				}
			});
		});
	});
};

if (document.documentElement.clientWidth < 576) {
	$(document).ready(function(){
		$('.fs__xfs').wTextSlicer({
			height: '280',
			maXheight: '400',
			textExpand: 'Больше информации',
			textHide: 'Меньше информации'
		});
	});
};

// -------------- СМЕНА ТЕМЫ ---------------------------------
$('body').toggleClass(window.localStorage.toggled);
$('.theme-btn').on('click',function(){

	if (window.localStorage.toggled != "theme-light" ) {
		$('body').toggleClass("theme-light", true );
		window.localStorage.toggled = "theme-light";
	} else {
		$('body').toggleClass("theme-light", false );
		window.localStorage.toggled = "";
	}
});




/*!  wTextSlicer v 1.01 */
jQuery.fn.wTextSlicer = function(options){
	var options = jQuery.extend({
		height: '200',
		maXheight: '200',
		textExpand: 'expand text',
		textHide: 'hide text'
	},options);
	return this.each(function() {
		var a = $(this),
		h = a.outerHeight();
		if ( h > options.maXheight ) {
			a.addClass('slice slice-masked').attr('data-height',h).height(options.height).after('<div class="slice-btn" aria-label="Read more">'+options.textExpand+'</div>');
		};
		var bt = $(this).next('.slice-btn');
		bt.click(function() {
			var ah = parseInt(a.css("height"), 10);
			ah == h ? a.css({'height':options.height}) : a.css({'height':h});
			bt.text(bt.text() == options.textExpand ? options.textHide : options.textExpand);
			bt.toggleClass('slice-btn_tgd');
			a.toggleClass('slice-masked');
		});
	});
};


function doRateLD( rate, id ) {
	ShowLoading('');
	$.get(dle_root + "engine/ajax/controller.php?mod=rating", { go_rate: rate, news_id: id, skin: dle_skin, user_hash: dle_login_hash }, function(data){
		HideLoading('');
		if ( data.success ) {
			var rating = data.rating;
			rating = rating.replace(/&lt;/g, "<");
			rating = rating.replace(/&gt;/g, ">");
			rating = rating.replace(/&amp;/g, "&");
			$("#ratig-layer-" + id).html(rating);
			$("#vote-num-id-" + id).html(data.votenum);
			var rt = parseInt($(rating).text()),
			m = (data.votenum - rt)/2,
			p = data.votenum - m,
			perc = Math.round(p/data.votenum*100),
			fRate = $("#frate-" + id);
			fRate.find('.rate-plus span.rate-value').html(p);
			fRate.find('.rate-minus span.rate-value').html(m);
			fRate.find('.rfill').css({'width':''+perc+'%'});
		} else if (data.error) {DLEalert ( data.errorinfo, dle_info );}
	}, "json");
};


if (document.documentElement.clientWidth > 992) {
	$(function(){
		$('.hovertip').each(function(){
			var	HOVERTRIG = $(this),
			TITLE = HOVERTRIG.attr('title'),
			TXT = HOVERTRIG.closest('.new-short__poster').prev('.tipbubble');

			HOVERTRIG
			.hover(
				showTip,
				function(){
					$(this)
					.closest('.new-short__poster')
					.prev()
					.stop(true)
					.fadeOut(100)
					.attr('aria-hidden',true)
				})
		});
		function showTip(e){
			var PIP = $(this),
			TIP = $(this).closest('.new-short__poster').prev(),
			TipW = TIP.outerWidth(),
			TipH = TIP.outerHeight(), 
			PipW = PIP.outerWidth(),
			PipH = PIP.outerHeight(),
			CurW = $(this).offset().left - $(window).scrollLeft()
			CurH = $(this).offset().top - $(window).scrollTop(),
			LastCoord = $(window).width() - CurW - PipW;

			if (LastCoord >= TipW+20){
				TIP.removeClass('left-tip-pos').addClass('right-tip-pos');
			} else {
				TIP.removeClass('right-tip-pos').addClass('left-tip-pos');
			}
			TIP.attr('aria-hidden',false);
			TIP.stop(true).delay(100).fadeToggle(100);
			e.stopPropagation();
		}
	});
};



/*! Magnific Popup - v1.1.0 - 2016-02-20
* http://dimsemenov.com/plugins/magnific-popup/
* Copyright (c) 2016 Dmitry Semenov; */
// Magnific Popup v1.1.0 by Dmitry Semenov
// http://bit.ly/magnific-popup#build=image+ajax+gallery+imagezoom
(function(a){typeof define=="function"&&define.amd?define(["jquery"],a):typeof exports=="object"?a(require("jquery")):a(window.jQuery||window.Zepto)})(function(a){var b="Close",c="BeforeClose",d="AfterClose",e="BeforeAppend",f="MarkupParse",g="Open",h="Change",i="mfp",j="."+i,k="mfp-ready",l="mfp-removing",m="mfp-prevent-close",n,o=function(){},p=!!window.jQuery,q,r=a(window),s,t,u,v,w=function(a,b){n.ev.on(i+a+j,b)},x=function(b,c,d,e){var f=document.createElement("div");return f.className="mfp-"+b,d&&(f.innerHTML=d),e?c&&c.appendChild(f):(f=a(f),c&&f.appendTo(c)),f},y=function(b,c){n.ev.triggerHandler(i+b,c),n.st.callbacks&&(b=b.charAt(0).toLowerCase()+b.slice(1),n.st.callbacks[b]&&n.st.callbacks[b].apply(n,a.isArray(c)?c:[c]))},z=function(b){if(b!==v||!n.currTemplate.closeBtn)n.currTemplate.closeBtn=a(n.st.closeMarkup.replace("%title%",n.st.tClose)),v=b;return n.currTemplate.closeBtn},A=function(){a.magnificPopup.instance||(n=new o,n.init(),a.magnificPopup.instance=n)},B=function(){var a=document.createElement("p").style,b=["ms","O","Moz","Webkit"];if(a.transition!==undefined)return!0;while(b.length)if(b.pop()+"Transition"in a)return!0;return!1};o.prototype={constructor:o,init:function(){var b=navigator.appVersion;n.isLowIE=n.isIE8=document.all&&!document.addEventListener,n.isAndroid=/android/gi.test(b),n.isIOS=/iphone|ipad|ipod/gi.test(b),n.supportsTransition=B(),n.probablyMobile=n.isAndroid||n.isIOS||/(Opera Mini)|Kindle|webOS|BlackBerry|(Opera Mobi)|(Windows Phone)|IEMobile/i.test(navigator.userAgent),s=a(document),n.popupsCache={}},open:function(b){var c;if(b.isObj===!1){n.items=b.items.toArray(),n.index=0;var d=b.items,e;for(c=0;c<d.length;c++){e=d[c],e.parsed&&(e=e.el[0]);if(e===b.el[0]){n.index=c;break}}}else n.items=a.isArray(b.items)?b.items:[b.items],n.index=b.index||0;if(n.isOpen){n.updateItemHTML();return}n.types=[],u="",b.mainEl&&b.mainEl.length?n.ev=b.mainEl.eq(0):n.ev=s,b.key?(n.popupsCache[b.key]||(n.popupsCache[b.key]={}),n.currTemplate=n.popupsCache[b.key]):n.currTemplate={},n.st=a.extend(!0,{},a.magnificPopup.defaults,b),n.fixedContentPos=n.st.fixedContentPos==="auto"?!n.probablyMobile:n.st.fixedContentPos,n.st.modal&&(n.st.closeOnContentClick=!1,n.st.closeOnBgClick=!1,n.st.showCloseBtn=!1,n.st.enableEscapeKey=!1),n.bgOverlay||(n.bgOverlay=x("bg").on("click"+j,function(){n.close()}),n.wrap=x("wrap").attr("tabindex",-1).on("click"+j,function(a){n._checkIfClose(a.target)&&n.close()}),n.container=x("container",n.wrap)),n.contentContainer=x("content"),n.st.preloader&&(n.preloader=x("preloader",n.container,n.st.tLoading));var h=a.magnificPopup.modules;for(c=0;c<h.length;c++){var i=h[c];i=i.charAt(0).toUpperCase()+i.slice(1),n["init"+i].call(n)}y("BeforeOpen"),n.st.showCloseBtn&&(n.st.closeBtnInside?(w(f,function(a,b,c,d){c.close_replaceWith=z(d.type)}),u+=" mfp-close-btn-in"):n.wrap.append(z())),n.st.alignTop&&(u+=" mfp-align-top"),n.fixedContentPos?n.wrap.css({overflow:n.st.overflowY,overflowX:"hidden",overflowY:n.st.overflowY}):n.wrap.css({top:r.scrollTop(),position:"absolute"}),(n.st.fixedBgPos===!1||n.st.fixedBgPos==="auto"&&!n.fixedContentPos)&&n.bgOverlay.css({height:s.height(),position:"absolute"}),n.st.enableEscapeKey&&s.on("keyup"+j,function(a){a.keyCode===27&&n.close()}),r.on("resize"+j,function(){n.updateSize()}),n.st.closeOnContentClick||(u+=" mfp-auto-cursor"),u&&n.wrap.addClass(u);var l=n.wH=r.height(),m={};if(n.fixedContentPos&&n._hasScrollBar(l)){var o=n._getScrollbarSize();o&&(m.marginRight=o)}n.fixedContentPos&&(n.isIE7?a("body, html").css("overflow","hidden"):m.overflow="hidden");var p=n.st.mainClass;return n.isIE7&&(p+=" mfp-ie7"),p&&n._addClassToMFP(p),n.updateItemHTML(),y("BuildControls"),a("html").css(m),n.bgOverlay.add(n.wrap).prependTo(n.st.prependTo||a(document.body)),n._lastFocusedEl=document.activeElement,setTimeout(function(){n.content?(n._addClassToMFP(k),n._setFocus()):n.bgOverlay.addClass(k),s.on("focusin"+j,n._onFocusIn)},16),n.isOpen=!0,n.updateSize(l),y(g),b},close:function(){if(!n.isOpen)return;y(c),n.isOpen=!1,n.st.removalDelay&&!n.isLowIE&&n.supportsTransition?(n._addClassToMFP(l),setTimeout(function(){n._close()},n.st.removalDelay)):n._close()},_close:function(){y(b);var c=l+" "+k+" ";n.bgOverlay.detach(),n.wrap.detach(),n.container.empty(),n.st.mainClass&&(c+=n.st.mainClass+" "),n._removeClassFromMFP(c);if(n.fixedContentPos){var e={marginRight:""};n.isIE7?a("body, html").css("overflow",""):e.overflow="",a("html").css(e)}s.off("keyup"+j+" focusin"+j),n.ev.off(j),n.wrap.attr("class","mfp-wrap").removeAttr("style"),n.bgOverlay.attr("class","mfp-bg"),n.container.attr("class","mfp-container"),n.st.showCloseBtn&&(!n.st.closeBtnInside||n.currTemplate[n.currItem.type]===!0)&&n.currTemplate.closeBtn&&n.currTemplate.closeBtn.detach(),n.st.autoFocusLast&&n._lastFocusedEl&&a(n._lastFocusedEl).focus(),n.currItem=null,n.content=null,n.currTemplate=null,n.prevHeight=0,y(d)},updateSize:function(a){if(n.isIOS){var b=document.documentElement.clientWidth/window.innerWidth,c=window.innerHeight*b;n.wrap.css("height",c),n.wH=c}else n.wH=a||r.height();n.fixedContentPos||n.wrap.css("height",n.wH),y("Resize")},updateItemHTML:function(){var b=n.items[n.index];n.contentContainer.detach(),n.content&&n.content.detach(),b.parsed||(b=n.parseEl(n.index));var c=b.type;y("BeforeChange",[n.currItem?n.currItem.type:"",c]),n.currItem=b;if(!n.currTemplate[c]){var d=n.st[c]?n.st[c].markup:!1;y("FirstMarkupParse",d),d?n.currTemplate[c]=a(d):n.currTemplate[c]=!0}t&&t!==b.type&&n.container.removeClass("mfp-"+t+"-holder");var e=n["get"+c.charAt(0).toUpperCase()+c.slice(1)](b,n.currTemplate[c]);n.appendContent(e,c),b.preloaded=!0,y(h,b),t=b.type,n.container.prepend(n.contentContainer),y("AfterChange")},appendContent:function(a,b){n.content=a,a?n.st.showCloseBtn&&n.st.closeBtnInside&&n.currTemplate[b]===!0?n.content.find(".mfp-close").length||n.content.append(z()):n.content=a:n.content="",y(e),n.container.addClass("mfp-"+b+"-holder"),n.contentContainer.append(n.content)},parseEl:function(b){var c=n.items[b],d;c.tagName?c={el:a(c)}:(d=c.type,c={data:c,src:c.src});if(c.el){var e=n.types;for(var f=0;f<e.length;f++)if(c.el.hasClass("mfp-"+e[f])){d=e[f];break}c.src=c.el.attr("data-mfp-src"),c.src||(c.src=c.el.attr("href"))}return c.type=d||n.st.type||"inline",c.index=b,c.parsed=!0,n.items[b]=c,y("ElementParse",c),n.items[b]},addGroup:function(a,b){var c=function(c){c.mfpEl=this,n._openClick(c,a,b)};b||(b={});var d="click.magnificPopup";b.mainEl=a,b.items?(b.isObj=!0,a.off(d).on(d,c)):(b.isObj=!1,b.delegate?a.off(d).on(d,b.delegate,c):(b.items=a,a.off(d).on(d,c)))},_openClick:function(b,c,d){var e=d.midClick!==undefined?d.midClick:a.magnificPopup.defaults.midClick;if(!e&&(b.which===2||b.ctrlKey||b.metaKey||b.altKey||b.shiftKey))return;var f=d.disableOn!==undefined?d.disableOn:a.magnificPopup.defaults.disableOn;if(f)if(a.isFunction(f)){if(!f.call(n))return!0}else if(r.width()<f)return!0;b.type&&(b.preventDefault(),n.isOpen&&b.stopPropagation()),d.el=a(b.mfpEl),d.delegate&&(d.items=c.find(d.delegate)),n.open(d)},updateStatus:function(a,b){if(n.preloader){q!==a&&n.container.removeClass("mfp-s-"+q),!b&&a==="loading"&&(b=n.st.tLoading);var c={status:a,text:b};y("UpdateStatus",c),a=c.status,b=c.text,n.preloader.html(b),n.preloader.find("a").on("click",function(a){a.stopImmediatePropagation()}),n.container.addClass("mfp-s-"+a),q=a}},_checkIfClose:function(b){if(a(b).hasClass(m))return;var c=n.st.closeOnContentClick,d=n.st.closeOnBgClick;if(c&&d)return!0;if(!n.content||a(b).hasClass("mfp-close")||n.preloader&&b===n.preloader[0])return!0;if(b!==n.content[0]&&!a.contains(n.content[0],b)){if(d&&a.contains(document,b))return!0}else if(c)return!0;return!1},_addClassToMFP:function(a){n.bgOverlay.addClass(a),n.wrap.addClass(a)},_removeClassFromMFP:function(a){this.bgOverlay.removeClass(a),n.wrap.removeClass(a)},_hasScrollBar:function(a){return(n.isIE7?s.height():document.body.scrollHeight)>(a||r.height())},_setFocus:function(){(n.st.focus?n.content.find(n.st.focus).eq(0):n.wrap).focus()},_onFocusIn:function(b){if(b.target!==n.wrap[0]&&!a.contains(n.wrap[0],b.target))return n._setFocus(),!1},_parseMarkup:function(b,c,d){var e;d.data&&(c=a.extend(d.data,c)),y(f,[b,c,d]),a.each(c,function(c,d){if(d===undefined||d===!1)return!0;e=c.split("_");if(e.length>1){var f=b.find(j+"-"+e[0]);if(f.length>0){var g=e[1];g==="replaceWith"?f[0]!==d[0]&&f.replaceWith(d):g==="img"?f.is("img")?f.attr("src",d):f.replaceWith(a("<img>").attr("src",d).attr("class",f.attr("class"))):f.attr(e[1],d)}}else b.find(j+"-"+c).html(d)})},_getScrollbarSize:function(){if(n.scrollbarSize===undefined){var a=document.createElement("div");a.style.cssText="width: 99px; height: 99px; overflow: scroll; position: absolute; top: -9999px;",document.body.appendChild(a),n.scrollbarSize=a.offsetWidth-a.clientWidth,document.body.removeChild(a)}return n.scrollbarSize}},a.magnificPopup={instance:null,proto:o.prototype,modules:[],open:function(b,c){return A(),b?b=a.extend(!0,{},b):b={},b.isObj=!0,b.index=c||0,this.instance.open(b)},close:function(){return a.magnificPopup.instance&&a.magnificPopup.instance.close()},registerModule:function(b,c){c.options&&(a.magnificPopup.defaults[b]=c.options),a.extend(this.proto,c.proto),this.modules.push(b)},defaults:{disableOn:0,key:null,midClick:!1,mainClass:"",preloader:!0,focus:"",closeOnContentClick:!1,closeOnBgClick:!0,closeBtnInside:!0,showCloseBtn:!0,enableEscapeKey:!0,modal:!1,alignTop:!1,removalDelay:0,prependTo:null,fixedContentPos:"auto",fixedBgPos:"auto",overflowY:"auto",closeMarkup:'<button title="%title%" type="button" class="mfp-close">&#215;</button>',tClose:"Close (Esc)",tLoading:"Loading...",autoFocusLast:!0}},a.fn.magnificPopup=function(b){A();var c=a(this);if(typeof b=="string")if(b==="open"){var d,e=p?c.data("magnificPopup"):c[0].magnificPopup,f=parseInt(arguments[1],10)||0;e.items?d=e.items[f]:(d=c,e.delegate&&(d=d.find(e.delegate)),d=d.eq(f)),n._openClick({mfpEl:d},c,e)}else n.isOpen&&n[b].apply(n,Array.prototype.slice.call(arguments,1));else b=a.extend(!0,{},b),p?c.data("magnificPopup",b):c[0].magnificPopup=b,n.addGroup(c,b);return c};var C="ajax",D,E=function(){D&&a(document.body).removeClass(D)},F=function(){E(),n.req&&n.req.abort()};a.magnificPopup.registerModule(C,{options:{settings:null,cursor:"mfp-ajax-cur",tError:'<a href="%url%">The content</a> could not be loaded.'},proto:{initAjax:function(){n.types.push(C),D=n.st.ajax.cursor,w(b+"."+C,F),w("BeforeChange."+C,F)},getAjax:function(b){D&&a(document.body).addClass(D),n.updateStatus("loading");var c=a.extend({url:b.src,success:function(c,d,e){var f={data:c,xhr:e};y("ParseAjax",f),n.appendContent(a(f.data),C),b.finished=!0,E(),n._setFocus(),setTimeout(function(){n.wrap.addClass(k)},16),n.updateStatus("ready"),y("AjaxContentAdded")},error:function(){E(),b.finished=b.loadError=!0,n.updateStatus("error",n.st.ajax.tError.replace("%url%",b.src))}},n.st.ajax.settings);return n.req=a.ajax(c),""}}});var G,H=function(b){if(b.data&&b.data.title!==undefined)return b.data.title;var c=n.st.image.titleSrc;if(c){if(a.isFunction(c))return c.call(n,b);if(b.el)return b.el.attr(c)||""}return""};a.magnificPopup.registerModule("image",{options:{markup:'<div class="mfp-figure"><div class="mfp-close"></div><figure><div class="mfp-img"></div><figcaption><div class="mfp-bottom-bar"><div class="mfp-title"></div><div class="mfp-counter"></div></div></figcaption></figure></div>',cursor:"mfp-zoom-out-cur",titleSrc:"title",verticalFit:!0,tError:'<a href="%url%">The image</a> could not be loaded.'},proto:{initImage:function(){var c=n.st.image,d=".image";n.types.push("image"),w(g+d,function(){n.currItem.type==="image"&&c.cursor&&a(document.body).addClass(c.cursor)}),w(b+d,function(){c.cursor&&a(document.body).removeClass(c.cursor),r.off("resize"+j)}),w("Resize"+d,n.resizeImage),n.isLowIE&&w("AfterChange",n.resizeImage)},resizeImage:function(){var a=n.currItem;if(!a||!a.img)return;if(n.st.image.verticalFit){var b=0;n.isLowIE&&(b=parseInt(a.img.css("padding-top"),10)+parseInt(a.img.css("padding-bottom"),10)),a.img.css("max-height",n.wH-b)}},_onImageHasSize:function(a){a.img&&(a.hasSize=!0,G&&clearInterval(G),a.isCheckingImgSize=!1,y("ImageHasSize",a),a.imgHidden&&(n.content&&n.content.removeClass("mfp-loading"),a.imgHidden=!1))},findImageSize:function(a){var b=0,c=a.img[0],d=function(e){G&&clearInterval(G),G=setInterval(function(){if(c.naturalWidth>0){n._onImageHasSize(a);return}b>200&&clearInterval(G),b++,b===3?d(10):b===40?d(50):b===100&&d(500)},e)};d(1)},getImage:function(b,c){var d=0,e=function(){b&&(b.img[0].complete?(b.img.off(".mfploader"),b===n.currItem&&(n._onImageHasSize(b),n.updateStatus("ready")),b.hasSize=!0,b.loaded=!0,y("ImageLoadComplete")):(d++,d<200?setTimeout(e,100):f()))},f=function(){b&&(b.img.off(".mfploader"),b===n.currItem&&(n._onImageHasSize(b),n.updateStatus("error",g.tError.replace("%url%",b.src))),b.hasSize=!0,b.loaded=!0,b.loadError=!0)},g=n.st.image,h=c.find(".mfp-img");if(h.length){var i=document.createElement("img");i.className="mfp-img",b.el&&b.el.find("img").length&&(i.alt=b.el.find("img").attr("alt")),b.img=a(i).on("load.mfploader",e).on("error.mfploader",f),i.src=b.src,h.is("img")&&(b.img=b.img.clone()),i=b.img[0],i.naturalWidth>0?b.hasSize=!0:i.width||(b.hasSize=!1)}return n._parseMarkup(c,{title:H(b),img_replaceWith:b.img},b),n.resizeImage(),b.hasSize?(G&&clearInterval(G),b.loadError?(c.addClass("mfp-loading"),n.updateStatus("error",g.tError.replace("%url%",b.src))):(c.removeClass("mfp-loading"),n.updateStatus("ready")),c):(n.updateStatus("loading"),b.loading=!0,b.hasSize||(b.imgHidden=!0,c.addClass("mfp-loading"),n.findImageSize(b)),c)}}});var I,J=function(){return I===undefined&&(I=document.createElement("p").style.MozTransform!==undefined),I};a.magnificPopup.registerModule("zoom",{options:{enabled:!1,easing:"ease-in-out",duration:300,opener:function(a){return a.is("img")?a:a.find("img")}},proto:{initZoom:function(){var a=n.st.zoom,d=".zoom",e;if(!a.enabled||!n.supportsTransition)return;var f=a.duration,g=function(b){var c=b.clone().removeAttr("style").removeAttr("class").addClass("mfp-animated-image"),d="all "+a.duration/1e3+"s "+a.easing,e={position:"fixed",zIndex:9999,left:0,top:0,"-webkit-backface-visibility":"hidden"},f="transition";return e["-webkit-"+f]=e["-moz-"+f]=e["-o-"+f]=e[f]=d,c.css(e),c},h=function(){n.content.css("visibility","visible")},i,j;w("BuildControls"+d,function(){if(n._allowZoom()){clearTimeout(i),n.content.css("visibility","hidden"),e=n._getItemToZoom();if(!e){h();return}j=g(e),j.css(n._getOffset()),n.wrap.append(j),i=setTimeout(function(){j.css(n._getOffset(!0)),i=setTimeout(function(){h(),setTimeout(function(){j.remove(),e=j=null,y("ZoomAnimationEnded")},16)},f)},16)}}),w(c+d,function(){if(n._allowZoom()){clearTimeout(i),n.st.removalDelay=f;if(!e){e=n._getItemToZoom();if(!e)return;j=g(e)}j.css(n._getOffset(!0)),n.wrap.append(j),n.content.css("visibility","hidden"),setTimeout(function(){j.css(n._getOffset())},16)}}),w(b+d,function(){n._allowZoom()&&(h(),j&&j.remove(),e=null)})},_allowZoom:function(){return n.currItem.type==="image"},_getItemToZoom:function(){return n.currItem.hasSize?n.currItem.img:!1},_getOffset:function(b){var c;b?c=n.currItem.img:c=n.st.zoom.opener(n.currItem.el||n.currItem);var d=c.offset(),e=parseInt(c.css("padding-top"),10),f=parseInt(c.css("padding-bottom"),10);d.top-=a(window).scrollTop()-e;var g={width:c.width(),height:(p?c.innerHeight():c[0].offsetHeight)-f-e};return J()?g["-moz-transform"]=g.transform="translate("+d.left+"px,"+d.top+"px)":(g.left=d.left,g.top=d.top),g}}});var K=function(a){var b=n.items.length;return a>b-1?a-b:a<0?b+a:a},L=function(a,b,c){return a.replace(/%curr%/gi,b+1).replace(/%total%/gi,c)};a.magnificPopup.registerModule("gallery",{options:{enabled:!1,arrowMarkup:'<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>',preload:[0,2],navigateByImgClick:!0,arrows:!0,tPrev:"Previous (Left arrow key)",tNext:"Next (Right arrow key)",tCounter:"%curr% of %total%"},proto:{initGallery:function(){var c=n.st.gallery,d=".mfp-gallery";n.direction=!0;if(!c||!c.enabled)return!1;u+=" mfp-gallery",w(g+d,function(){c.navigateByImgClick&&n.wrap.on("click"+d,".mfp-img",function(){if(n.items.length>1)return n.next(),!1}),s.on("keydown"+d,function(a){a.keyCode===37?n.prev():a.keyCode===39&&n.next()})}),w("UpdateStatus"+d,function(a,b){b.text&&(b.text=L(b.text,n.currItem.index,n.items.length))}),w(f+d,function(a,b,d,e){var f=n.items.length;d.counter=f>1?L(c.tCounter,e.index,f):""}),w("BuildControls"+d,function(){if(n.items.length>1&&c.arrows&&!n.arrowLeft){var b=c.arrowMarkup,d=n.arrowLeft=a(b.replace(/%title%/gi,c.tPrev).replace(/%dir%/gi,"left")).addClass(m),e=n.arrowRight=a(b.replace(/%title%/gi,c.tNext).replace(/%dir%/gi,"right")).addClass(m);d.click(function(){n.prev()}),e.click(function(){n.next()}),n.container.append(d.add(e))}}),w(h+d,function(){n._preloadTimeout&&clearTimeout(n._preloadTimeout),n._preloadTimeout=setTimeout(function(){n.preloadNearbyImages(),n._preloadTimeout=null},16)}),w(b+d,function(){s.off(d),n.wrap.off("click"+d),n.arrowRight=n.arrowLeft=null})},next:function(){n.direction=!0,n.index=K(n.index+1),n.updateItemHTML()},prev:function(){n.direction=!1,n.index=K(n.index-1),n.updateItemHTML()},goTo:function(a){n.direction=a>=n.index,n.index=a,n.updateItemHTML()},preloadNearbyImages:function(){var a=n.st.gallery.preload,b=Math.min(a[0],n.items.length),c=Math.min(a[1],n.items.length),d;for(d=1;d<=(n.direction?c:b);d++)n._preloadItem(n.index+d);for(d=1;d<=(n.direction?b:c);d++)n._preloadItem(n.index-d)},_preloadItem:function(b){b=K(b);if(n.items[b].preloaded)return;var c=n.items[b];c.parsed||(c=n.parseEl(b)),y("LazyLoad",c),c.type==="image"&&(c.img=a('<img class="mfp-img" />').on("load.mfploader",function(){c.hasSize=!0}).on("error.mfploader",function(){c.hasSize=!0,c.loadError=!0,y("LazyLoadError",c)}).attr("src",c.src)),c.preloaded=!0}}}),A()})

/*! lazysizes - v5.3.2 (customized) */
!function(e,t){t=t(e,e.document,Date),e.lazySizes=t,"object"==typeof module&&module.exports&&(module.exports=t)}("undefined"!=typeof window?window:{},function(n,f,s){"use strict";var m,y;if(!function(){var e,t={lazyClass:"lazyload",loadedClass:"lazyloaded",loadingClass:"lazyloading",preloadClass:"lazypreload",errorClass:"lazyerror",autosizesClass:"lazyautosizes",fastLoadedClass:"ls-is-cached",iframeLoadMode:0,srcAttr:"data-src",srcsetAttr:"data-srcset",sizesAttr:"data-sizes",minSize:40,customMedia:{},init:!0,expFactor:1,hFac:.4,expand:100,loadMode:1,loadHidden:!0,ricTimeout:0,throttleDelay:125};for(e in y=n.lazySizesConfig||n.lazysizesConfig||{},t)e in y||(y[e]=t[e])}(),!f||!f.getElementsByClassName)return{init:function(){},cfg:y,noSupport:!0};function o(e,t){return N[t]||(N[t]=new RegExp("(\\s|^)"+t+"(\\s|$)")),N[t].test(e[b]("class")||"")&&N[t]}function c(e,t){o(e,t)||e.setAttribute("class",(e[b]("class")||"").trim()+" "+t)}function u(e,t){(t=o(e,t))&&e.setAttribute("class",(e[b]("class")||"").replace(t," "))}function z(e,t,a,n,i){var s=f.createEvent("Event");return(a=a||{}).instance=m,s.initEvent(t,!n,!i),s.detail=a,e.dispatchEvent(s),s}function h(e,t){var a;!p&&(a=n.picturefill||y.pf)?(t&&t.src&&!e[b]("srcset")&&e.setAttribute("srcset",t.src),a({reevaluate:!0,elements:[e]})):t&&t.src&&(e.src=t.src)}function g(e,t){return(getComputedStyle(e,null)||{})[t]}function i(e,t,a){for(a=a||e.offsetWidth;a<y.minSize&&t&&!e._lazysizesWidth;)a=t.offsetWidth,t=t.parentNode;return a}var a,r,t,l,d,v=f.documentElement,p=n.HTMLPictureElement,C="addEventListener",b="getAttribute",e=n[C].bind(n),A=n.setTimeout,E=n.requestAnimationFrame||A,_=n.requestIdleCallback,w=/^picture$/i,M=["load","error","lazyincluded","_lazyloaded"],N={},L=Array.prototype.forEach,x=function(t,a,e){var n=e?C:"removeEventListener";e&&x(t,a),M.forEach(function(e){t[n](e,a)})},W=(l=[],d=t=[],B._lsFlush=S,B);function S(){var e=d;for(d=t.length?l:t,r=!(a=!0);e.length;)e.shift()();a=!1}function B(e,t){a&&!t?e.apply(this,arguments):(d.push(e),r||(r=!0,(f.hidden?A:E)(S)))}function T(a,e){return e?function(){W(a)}:function(){var e=this,t=arguments;W(function(){a.apply(e,t)})}}function F(e){function t(){a=null,e()}var a,n,i=function(){var e=s.now()-n;e<99?A(i,99-e):(_||t)(t)};return function(){n=s.now(),a=a||A(i,99)}}var R,D,k,H,O,P,$,q,I,U,j,G,J,K,Q,V,X,Y,Z,ee,te,ae,ne,ie,se,oe,re,le,de,ce,ue,fe=(Z=/^img$/i,ee=/^iframe$/i,te="onscroll"in n&&!/(gle|ing)bot/.test(navigator.userAgent),ie=-1,J=ze,Q=ne=ae=0,V=y.throttleDelay,X=y.ricTimeout,Y=_&&49<X?function(){_(he,{timeout:X}),X!==y.ricTimeout&&(X=y.ricTimeout)}:T(function(){A(he)},!0),oe=T(ge),re=function(e){oe({target:e.target})},le=T(function(t,e,a,n,i){var s,o,r,l,d;(r=z(t,"lazybeforeunveil",e)).defaultPrevented||(n&&(a?c(t,y.autosizesClass):t.setAttribute("sizes",n)),s=t[b](y.srcsetAttr),a=t[b](y.srcAttr),i&&(o=(d=t.parentNode)&&w.test(d.nodeName||"")),l=e.firesLoad||"src"in t&&(s||a||o),r={target:t},c(t,y.loadingClass),l&&(clearTimeout(k),k=A(me,2500),x(t,re,!0)),o&&L.call(d.getElementsByTagName("source"),ve),s?t.setAttribute("srcset",s):a&&!o&&(ee.test(t.nodeName)?(n=a,0==(d=(e=t).getAttribute("data-load-mode")||y.iframeLoadMode)?e.contentWindow.location.replace(n):1==d&&(e.src=n)):t.src=a),i&&(s||o)&&h(t,{src:a})),t._lazyRace&&delete t._lazyRace,u(t,y.lazyClass),W(function(){var e=t.complete&&1<t.naturalWidth;l&&!e||(e&&c(t,y.fastLoadedClass),ge(r),t._lazyCache=!0,A(function(){"_lazyCache"in t&&delete t._lazyCache},9)),"lazy"==t.loading&&ne--},!0)}),ce=F(function(){y.loadMode=3,se()}),ue=function(){D||(s.now()-O<999?A(ue,999):(D=!0,y.loadMode=3,se(),e("scroll",pe,!0)))},{_:function(){O=s.now(),m.elements=f.getElementsByClassName(y.lazyClass),R=f.getElementsByClassName(y.lazyClass+" "+y.preloadClass),e("scroll",se,!0),e("resize",se,!0),e("pageshow",function(e){var t;!e.persisted||(t=f.querySelectorAll("."+y.loadingClass)).length&&t.forEach&&E(function(){t.forEach(function(e){e.complete&&de(e)})})}),n.MutationObserver?new MutationObserver(se).observe(v,{childList:!0,subtree:!0,attributes:!0}):(v[C]("DOMNodeInserted",se,!0),v[C]("DOMAttrModified",se,!0),setInterval(se,999)),e("hashchange",se,!0),["focus","mouseover","click","load","transitionend","animationend"].forEach(function(e){f[C](e,se,!0)}),/d$|^c/.test(f.readyState)?ue():(e("load",ue),f[C]("DOMContentLoaded",se),A(ue,2e4)),m.elements.length?(ze(),W._lsFlush()):se()},checkElems:se=function(e){var t;(e=!0===e)&&(X=33),K||(K=!0,(t=V-(s.now()-Q))<0&&(t=0),e||t<9?Y():A(Y,t))},unveil:de=function(e){var t,a,n,i;e._lazyRace||(!(i="auto"==(n=(a=Z.test(e.nodeName))&&(e[b](y.sizesAttr)||e[b]("sizes"))))&&D||!a||!e[b]("src")&&!e.srcset||e.complete||o(e,y.errorClass)||!o(e,y.lazyClass))&&(t=z(e,"lazyunveilread").detail,i&&Ee.updateElem(e,!0,e.offsetWidth),e._lazyRace=!0,ne++,le(e,t,i,n,a))},_aLSL:pe});function me(e){ne--,e&&!(ne<0)&&e.target||(ne=0)}function ye(e){return null==G&&(G="hidden"==g(f.body,"visibility")),G||!("hidden"==g(e.parentNode,"visibility")&&"hidden"==g(e,"visibility"))}function ze(){var e,t,a,n,i,s,o,r,l,d,c,u=m.elements;if((H=y.loadMode)&&ne<8&&(e=u.length)){for(t=0,ie++;t<e;t++)if(u[t]&&!u[t]._lazyRace)if(!te||m.prematureUnveil&&m.prematureUnveil(u[t]))de(u[t]);else if((o=u[t][b]("data-expand"))&&(i=+o)||(i=ae),l||(l=!y.expand||y.expand<1?500<v.clientHeight&&500<v.clientWidth?500:370:y.expand,d=(m._defEx=l)*y.expFactor,c=y.hFac,G=null,ae<d&&ne<1&&2<ie&&2<H&&!f.hidden?(ae=d,ie=0):ae=1<H&&1<ie&&ne<6?l:0),r!==i&&(P=innerWidth+i*c,$=innerHeight+i,s=-1*i,r=i),d=u[t].getBoundingClientRect(),(j=d.bottom)>=s&&(q=d.top)<=$&&(U=d.right)>=s*c&&(I=d.left)<=P&&(j||U||I||q)&&(y.loadHidden||ye(u[t]))&&(D&&ne<3&&!o&&(H<3||ie<4)||function(e,t){var a,n=e,i=ye(e);for(q-=t,j+=t,I-=t,U+=t;i&&(n=n.offsetParent)&&n!=f.body&&n!=v;)(i=0<(g(n,"opacity")||1))&&"visible"!=g(n,"overflow")&&(a=n.getBoundingClientRect(),i=U>a.left&&I<a.right&&j>a.top-1&&q<a.bottom+1);return i}(u[t],i))){if(de(u[t]),n=!0,9<ne)break}else!n&&D&&!a&&ne<4&&ie<4&&2<H&&(R[0]||y.preloadAfterLoad)&&(R[0]||!o&&(j||U||I||q||"auto"!=u[t][b](y.sizesAttr)))&&(a=R[0]||u[t]);a&&!n&&de(a)}}function he(){K=!1,Q=s.now(),J()}function ge(e){var t=e.target;t._lazyCache?delete t._lazyCache:(me(e),c(t,y.loadedClass),u(t,y.loadingClass),x(t,re),z(t,"lazyloaded"))}function ve(e){var t,a=e[b](y.srcsetAttr);(t=y.customMedia[e[b]("data-media")||e[b]("media")])&&e.setAttribute("media",t),a&&e.setAttribute("srcset",a)}function pe(){3==y.loadMode&&(y.loadMode=2),ce()}var Ce,be,Ae,Ee=(be=T(function(e,t,a,n){var i,s,o;if(e._lazysizesWidth=n,n+="px",e.setAttribute("sizes",n),w.test(t.nodeName||""))for(s=0,o=(i=t.getElementsByTagName("source")).length;s<o;s++)i[s].setAttribute("sizes",n);a.detail.dataAttr||h(e,a.detail)}),{_:function(){Ce=f.getElementsByClassName(y.autosizesClass),e("resize",Ae)},checkElems:Ae=F(function(){var e,t=Ce.length;if(t)for(e=0;e<t;e++)_e(Ce[e])}),updateElem:_e});function _e(e,t,a){var n=e.parentNode;n&&(a=i(e,n,a),(t=z(e,"lazybeforesizes",{width:a,dataAttr:!!t})).defaultPrevented||(a=t.detail.width)&&a!==e._lazysizesWidth&&be(e,n,t,a))}var we=function(){!we.i&&f.getElementsByClassName&&(we.i=!0,Ee._(),fe._())};return A(function(){y.init&&we()}),m={cfg:y,autoSizer:Ee,loader:fe,init:we,uP:h,aC:c,rC:u,hC:o,fire:z,gW:i,rAF:W}});