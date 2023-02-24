<article class="fs">
	<header class="fs__title--wrap"><h1 class="fs__title" itemprop="name">{title} смотреть онлайн</h1>
		<ul class="fs__info_top">
			<li class="fs__info_top--li">[xfvalue_title_en]</li>
			<li class="fs__info_top--li">[xfvalue_year]</li>
			<li class="fs__info_top--li">[xfvalue_age]</li>
		</ul>
	</header>
	<div class="fs__descr">
		<div class="fs__descr--text">
			<b>Описание кино {title}: </b>
			{short-story}
		</div>
	</div>
	<div class="release-info">
		[edit]<span class="new-edit icon-edit-1"></span>[/edit]
		[xfgiven_serial_life]
		<div class="serial-status">
			<span class="serial-status--text">Статус сериала:</span>
			<span class="serial-status--value">[xfvalue_serial_life]</span>
		</div>
		[/xfgiven_serial_life]
		<div class="date" title="Дата публикации / обновления">
			<i class="ri--text icon-left icon-calender-check"></i>
			<time datetime="{date=Y-m-d H:i}" class="ri--value">{date}</time>
		</div>
		<div class="date" title="Колличество комментариев">
			<i class="ri--text icon-left icon-message"></i>
			<span class="ri--value" itemprop="commentCount">{comments-num}</span>
		</div>
		<div class="author" title="Автор публикации">
			<i class="ri--text icon-left icon-user-check"></i>
			<span class="ri--value">{author}</span>
		</div>
	</div>
	<div class="fs__info">
		<div class="fs__poster-block">
			<img src="[xfgiven_poster][xfvalue_image_url_poster][/xfgiven_poster][xfnotgiven_poster]{THEME}/images/noposter.svg[/xfnotgiven_poster]" alt="{title}" class="fs__poster-img">
			[xfgiven_last_episode]
			<div class="new-short__episode">
				<span class="episode__value">[if xfield_last_episode != '1']1-[/if][xfvalue_last_episode]</span>
				<span class="episode__text last">серия</span>
				<span class="episode__value">[if xfield_last_season != '1']1-[/if][xfvalue_last_season]</span>
				<span class="episode__text">сезона</span>
			</div>
			[/xfgiven_last_episode]
		</div>
		<div class="fs__xfs">

			<div class="fs__info--topline">
				<div class="fs__btn-block">
					<a href="#player" class="fs__btn_watch hover-op active-op"><strong>cмотреть </strong><span class="fs__btn_watch--icon icon-play-circle icon-right"></span></a>
					[group=5]
					<a href="javascript: void(0);" onclick="alertDLE(); return false;">
						<span class="fs__btn_bookmark fs__btn_bookmark--add hover-op active-op" title="Добавить в закладки (смотреть позже)"><b class="fs__btn_bookmark--text">в закладки</b><i class="icon-bookmark-add fs__btn_bookmark--icon"></i></span>
					</a>
					[/group]
					[add-favorites]<span class="fs__btn_bookmark fs__btn_bookmark--add hover-op active-op" title="Добавить в закладки (смотреть позже)"><b class="fs__btn_bookmark--text">в закладки</b><i class="icon-bookmark-add fs__btn_bookmark--icon "></i></span>[/add-favorites]
					[del-favorites]<span class="fs__btn_bookmark fs__btn_bookmark--del hover-op active-op" title="Убрать из закладок"><b class="fs__btn_bookmark--text">из закладок</b><i class="icon-bookmark-remove fs__btn_bookmark--icon"></i></span>[/del-favorites]
				</div>
				<div class="fs__rating-block">
					<div class="kp" title="Рейтинг КиноПоиска"><span class="kp__span">КП</span>
						<b class="kp__value">[xfgiven_rating_kp][xfvalue_rating_kp limit="3"][/xfgiven_rating_kp]</b>
					</div>
					<div class="imdb" title="Рейтинг IMdb"><span class="imdb__span">IMDb</span>
						<b class="imdb__value">[xfgiven_rating_imdb][xfvalue_rating_imdb limit="3"][/xfgiven_rating_imdb]</b>
					</div>
				</div>
			</div>

			<ul class="xfs__block">
				<li class="xfs__item_op">
					<span class="xfs__item_op--title" >страна:</span>
					<b class="xfs__item_op--value">[xfvalue_countries]</b>
				</li>
				<li class="xfs__item_op xf-quality">
					<span class="xfs__item_op--title">качество:</span>
					<b class="xfs__item_op--value">[not-catlist=37][xfvalue_quality][/not-catlist][catlist=37]4k (2160)[/catlist]</b>
				</li>
				<li class="xfs__item_op">
					<span class="xfs__item_op--title">прод-ть:</span>
					<b class="xfs__item_op--value">[xfvalue_time]</b>
				</li>
				
				<li class="xfs__item_op xfs__item xf-director">
					<span class="xfs__item_op--title">перевод:</span>
					<b class="xfs__item_op--value">[xfvalue_translator] [xfgiven_all_translator]<i class="all-translator" title="[xfvalue_all_translator]">и др.</i>[/xfgiven_all_translator]</b>
				</li>
				<li class="xfs__item_op xfs__item  xf-director">
					<span class="xfs__item_op--title">режжисер:</span>
					<b class="xfs__item_op--value">[xfvalue_directors]</b>
				</li>
			</ul>
			<div class="xfs__block">
				<div class="xfs__item_op xfs__item  xfs__item_actors">
					<span class="xfs__item_op--title">актеры:</span>
					<b class="xfs__item_op--value" itemprop="actors">[xfvalue_actors]</b>
				</div>
			</div>
			<div class="xfs__block">
				<div class="xfs__item">
					<div class="xfs__item--value" itemprop="genre">{link-category}</div>
				</div>
			</div>
		</div>	
	</div>
	[xfgiven_cadre1]
	<div class="fs__cadre" id="cadre">
		<a href='[xfvalue_image_url_cadre1]' title="{title} кадр №1" class="cadre__item">
			<img class="cadre__item--img lazyload" data-src='[xfvalue_image_url_cadre1]' title="{title} кадр №1" alt="{title} кадр №1">
			<i class="cadre__item--icon icon-zoom-in hover-op"></i>
		</a>
		[xfgiven_cadre2]
		<a href='[xfvalue_image_url_cadre2]' title="{title} кадр №2" class="cadre__item">
			<img class="cadre__item--img lazyload" data-src='[xfvalue_image_url_cadre2]' title="{title} кадр №2"  alt="{title} кадр №2">
			<i class="cadre__item--icon icon-zoom-in hover-op"></i>
		</a>
		[/xfgiven_cadre2]
		[xfgiven_cadre3]
		<a href='[xfvalue_image_url_cadre3]' title="{title} кадр №3" class="cadre__item">
			<img class="cadre__item--img lazyload" data-src='[xfvalue_image_url_cadre3]' title="{title} кадр №3" alt="{title} кадр №3">
			<i class="cadre__item--icon icon-zoom-in hover-op"></i>
		</a>
		[/xfgiven_cadre3]
	</div>
	[/xfgiven_cadre1]
	<h2 class="fs__stitle">Кино {title} смотреть онлайн в хорошем качестве</h2>
	<div class="tabs" id="player">
		<ul class="tabs__caption">
			[xfgiven_player-1]<li class="tabs__link tabs__link_1 active" title="Плеер 'player-1'">Плеер α</li>[/xfgiven_player-1]
			[xfgiven_player-2]<li class="tabs__link tabs__link_2" title="Плеер 'player-2'">Плеер β</li>[/xfgiven_player-2]
			[xfgiven_player-3]<li class="tabs__link tabs__link_3" title="Плеер 'player-3'">Плеер γ</li>[/xfgiven_player-3]
			[xfgiven_player-4]<li class="tabs__link tabs__link_4" title="Плеер 'player-4'">Плеер ψ</li>[/xfgiven_player-4]
			<li class="tabs__link tabs__link_5">Трейлер</li>
		</ul>
		[xfgiven_player-1]
		<div class="tabs__content tabs__content_1 active">
			<iframe src="[xfvalue_player-1]" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		[/xfgiven_player-1]
		[xfgiven_player-2]
		<div class="tabs__content tabs__content_2">
			<iframe data-src="[xfvalue_player-2]" class="lazyload" frameborder="0" allowfullscreen=""></iframe>
		</div>
		[/xfgiven_player-2]
		[xfgiven_player-3]
		<div class="tabs__content tabs__content_3">
			<iframe data-src="[xfvalue_player-3]" class="lazyload" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		[/xfgiven_player-3]
		[xfgiven_player-4]
		<div class="tabs__content tabs__content_4">
			<iframe data-src="[xfvalue_player-4]" class="lazyload" frameborder="0" ></iframe>
		</div>
		[/xfgiven_player-4]
	</div>
	<div class="fs__undertabs">
		[rating-type-3]
		<div class="undertabs__rate frate ignore-select" id="frate-{news-id}">
			<div class="rate-plus hover-op active-op" id="pluss-{news-id}" onclick="doRateLD('plus', '{news-id}');"><span class="rate-icon icon-like"></span><span class="rate-value">0 🥦</span></div>
			<div class="rate-minus hover-op active-op" id="minuss-{news-id}" onclick="doRateLD('minus', '{news-id}');"><span class="rate-icon icon-dislike"></span><span class="rate-value">0 🍅</span></div>
			<div class="rate-data">{rating}{vote-num}</div>
		</div>
		[/rating-type-3]
		<ul class="undertabs__sharing">
			<li><a class="sharing__item hover-op active-op vkontakte" rel="nofollow" href="javascript: void(0)" onClick="window.open('http://vk.com/share.php?url={full-link}&title={title}&image=[xfvalue_image_url_poster]','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Поделиться Вконтакте"><i class="shar-icon icon-vk"></i></a></li>
			<li><a class="sharing__item hover-op active-op ok" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://connect.ok.ru/offer?url={full-link}','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Поделиться в Одноклассниках"><i class="shar-icon icon-odnoklassniki"></i></a></li>
			<li><a class="sharing__item hover-op active-op telegram" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://telegram.me/share/url?url={full-link}','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Поделиться в Телеграм"><i class="shar-icon icon-tlgrm"></i></a></li>
			<li><a class="sharing__item hover-op active-op twitter" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://twitter.com/intent/tweet?text={full-link}','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Твитнуть"><i class="shar-icon icon-twitter"></i></a></li>
			<li><a class="sharing__item hover-op active-op facebook" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://www.facebook.com/sharer.php?u={full-link}','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Поделиться в Facebook"><i class="shar-icon icon-facebook"></i></a></li>
			<li><a class="sharing__item hover-op active-op pinterest" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://ru.pinterest.com/pin/create/button/?url={full-link}','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" data-media="[xfvalue_image_url_poster]" title="Запинить"><i class="shar-icon icon-pinterest"></i></a></li>
			<li><a class="sharing__item hover-op active-op mailru" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://connect.mail.ru/share?url={full-link}','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Поделиться в @Мой мир"><i class="shar-icon icon-mailru"></i></a></li>
			<li><a class="sharing__item hover-op active-op whatsapp" rel="nofollow" href="javascript: void(0)" onClick="window.open('https://api.whatsapp.com/send?text={title}%20{full-link}&utm_source=share2','sharer','status=0,toolbar=0,width=700,height=500,top='+((screen.height-500)/2)+',left='+((screen.width-700)/2)+'');" title="Поделиться в whatsapp"><i class="shar-icon icon-whatsapp"></i></a></li>
		</ul>
		<div class="undertabs__btns-block">
			[group=5]
			<a href="javascript: void(0);" onclick="alertDLE(); return false;">
				<span class="undertabs__btn undertabs__btn_bookmark hover-op active-op"><i class="undertabs__btn--icon icon-bookmark-add"></i></span>
			</a>
			[/group]
			[add-favorites]<span class="undertabs__btn hover-op active-op"><i class="undertabs__btn--icon icon-bookmark-add"></i></span>[/add-favorites]
			[del-favorites]<span class="undertabs__btn undertabs__btn_bookmark--del hover-op active-op"><i class="undertabs__btn--icon icon-bookmark-remove"></i></span>[/del-favorites]
			[complaint]<span class="undertabs__btn undertabs__btn_dontwork hover-op active-op"><b class="up-576">не работает</b><i class="undertabs__btn--icon icon-alert icon-right"></i></span>[/complaint]
		</div>
	</div>
	<div class="fs__sect">
		<strong class="fs__sect_title">Похожие фильмы и сериалы</strong>
		<ul class="fs__relat-block">
			{related-news}
		</ul>
	</div>
	[poll]
	<div class="fs__sect">
		{poll}
	</div>
	[/poll]
	<section class="fs__sect">
		<div class="fs__comments-wrap">
			<div class="fs__addcomments-block [not-comments]addcomment_def[/not-comments][comments]addcomment_is[/comments]">
				{addcomments}
			</div>
			[comments]
			<div class="fs__comments-block">
				<strong class="fs__sect_title">Комментарии <span class="comments-num">{comments-num} шт</span></strong>
				{comments}
			</div>
			[/comments]
		</div>
	</section>
	<img src="[xfvalue_image_url_poster]" alt="Размытый фон новости" class="fs__img-blur">
</article>