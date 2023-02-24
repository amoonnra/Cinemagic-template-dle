<!DOCTYPE html>
<html>
<head>
	{headers}
	<meta name="HandheldFriendly" content="true">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="user-scalable=0, initial-scale=1.0, maximum-scale=1.0, width=device-width"> 
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="default">
	<link rel="shortcut icon" href="{THEME}/images/favicon.ico">
	<link rel="icon" type="image/png" sizes="16x16" href="{THEME}/images/favicon.png">
	<link href="{THEME}/css/main.css" type="text/css" rel="stylesheet">
	<link href="{THEME}/css/engine.css" type="text/css" rel="stylesheet">
	<link rel="preload" href="{THEME}/fonts/FuturaNewBook-Reg.woff2" as="font" type="font/woff2" crossorigin>
	<link rel="preload" href="{THEME}/fonts/FuturaNewBold-Reg.woff2" as="font" type="font/woff2" crossorigin>
	<link rel="preload" href="{THEME}/fonts/FuturaNewExtraBold-Reg.woff2" as="font" type="font/woff2" crossorigin>
	<link rel="preload" href="{THEME}/fonts/icomoon.woff" as="font" type="font/woff" crossorigin>
		[not-desktop]
	<style> .fs__btn_watch { padding: 9px 30px; } .xfs__item--value a { padding: 6px 12px; } .main__block--carousel-big { flex-wrap: wrap; overflow: auto hidden; white-space: nowrap; padding-bottom: 10px; clip-path: inset(0 0 10px 0); }	 .global__right_main .short-big { width: calc((100% - var(--page-margin)) / 2 - 18px); margin-right: 18px; display: inline-block; vertical-alig top; } .new-short.last { margin-right: var(--page-margin) !important; } .main__block--carousel-mid { flex-wrap: wrap; overflow: auto hidden; white-space: nowrap; padding-bottom: 10px; clip-path: inset(0 0 10px 0); } .global__right_main .short-mid { width: calc((100% - var(--page-margin)) / 5 - 18px); margin-right: 18px; display: inline-flex; vertical-alig top; } @media only screen and (max-width : 1200px) { 	.global__right_main .short-mid { width: calc((100% - var(--page-margin)) / 4 - 18px);} } @media only screen and (max-width : 840px) { 	.global__right_main .short-mid {margin-right: 13px; width: 180px;} 	.global__right_main .short-big { width: 500px; } } @media only screen and (max-width : 767px) { 	.global__right_main .short-big:first-child, .global__right_main .short-mid:first-child {margin-left: var(--page-margin);} } @media only screen and (max-width : 576px) { 	.global__right_main .short-mid {margin-right: 11px; width: 152px; } 	.main__block--carousel-big { scroll-snap-type: x mandatory; } 	.fs__xfs { margin-top: -120px; backdrop-filter: blur(10px); -webkit-backdrop-filter: blur(10px); padding: 20px 15px 0 20px; border-radius: px 20px 0 0px; } 	.xfs__item_actors .xfs__item_op--value, .xf-director .xfs__item_op--value { font-size: 15px; } } @media only screen and (min-width : 1640px) { 	.global__right_main .short-big { width: calc(100% / 3 - 20px); margin-right: 20px; height: 220px;} 	.global__right_main .new-short.last { margin-right: 0;} 	.global__right_main .short-mid { width: calc(100% / 6 - 20px); margin-right: 20px;} }
	</style>
	[/not-desktop]
</head>
<body>
	<header class="header__wrap ">
		<div class="header [available=showfull]header_full[/available] [available=main]header_main[/available] [not-available=main|showfull]header_all[/not-available]">
			<div class="header__left-block">
				<button type="button" class="menu-toggle header__menu-btn btn-op hover-op down-992">
					<i class="icon-menu"></i>
				</button>
				<a href="/" class="header__logo hover-op active-op">
					<img class="img-logo" src="{THEME}/images/logo.svg" alt="logo" title="Перейти на главную страницу">
					<span class="text-logo">Cinemagic</span>
				</a>
			</div>
			<div class="header__right-block">
				<form class="header__short-search-form hover-op" method="post">
					<input id="story" name="story" type="search">
					<div class="short-search-form__btns">
						<button class="short-search-form__btn hover-op" title="Найти" type="submit">
							<i class="icon-search-outline"></i>
						</button>
					</div>
					<input type="hidden" name="do" value="search">
					<input type="hidden" name="subaction" value="search">
				</form>
				<button type="button" class="sign-up up-576 hover-op filter-toogle up-1200" id="filter-toogle">
					<b>мультипоиск</b>
					<i class="icon-tune-circle icon-right" title="Расширенный поиск (фильтр)"></i>
				</button>
				<button class="login-tgl sign-up up-576 hover-op">
					[group=5]
					<b>войти</b>
					<i class="icon-log-in-outline icon-right"></i>
					[/group]
					[not-group=5]
					<b>кабинет</b>
					<i class="icon-profile-circle icon-right"></i>
					[/not-group]
				</button>
			</div>
		</div>
	</header>	
	<div class="global__right [available=showfull]global__right_full[/available] [available=main]global__right_main[/available] [not-available=main|showfull]global__right_all[/not-available]">
		{info}
		<main class="main [available=search]main_search[/available][available=userinfo]main_userinfo[/available]">
			[available=main]
			{include file="main-content.tpl"}
			[/available]
			[not-available=main]
			[not-available=showfull]{speedbar}[/not-available]
			[available=cat]
			<h1 class="page__title page__title_cat">{category-title} <small class="news-num">{catnewscount id="{category-id}"} шт</small></h1>
			<div class="page__descr--content-wrap">
				<div class="page__descr--content">
					{category-description}
				</div>
			</div>
			[/available]
			[available=lastcomments]<h1 class="page__title page__title_cat">Последние комментарии</h1>[/available]
			[available=favorites]<h1 class="page__title page__title_cat">Ваши закладки <small class="news-num">{favorite-count} шт</small></h1>[/available]
			{content}
			[available=showfull]{speedbar}[/available]
			[/not-available]
		</main>
		<footer class="footer">
			<div class="footer__copiright">domain.net ©</div>
			<div class="footer__links">
				<a href="/index.php?do=feedback" class="footer__link">Обратная связь</a>
				<a href="/#" class="footer__link">Правообладателям</a>
			</div>
		</footer>
	</div>
	{include file="global-left.tpl"}
	{include file="filter.tpl"}
	{login}
	<div id="alertreg" title="Добавление в закладки невозможно" style="display:none;" >
		Для того, чтобы иметь возможность добавлять фильмы в закладки, необходимо авторизироваться.<br><br>
		<a href="/index.php?do=register" class="login__btn_regist active-op" style="position: absolute; bottom: 20px; left: 20px;">регистрация</a>
	</div>
	{jsfiles}
	{AJAX}
	<script src="{THEME}/js/common.js"></script>
	<script defer src="{THEME}/js/filter.js"></script>
	[desktop]
		[not-available=showfull]
		<script type="text/javascript" src="/engine/classes/min/index.php?f={THEME}/js/owl.js&amp;7" defer></script>
		[/not-available]
		[/desktop]
</body>
</html>





