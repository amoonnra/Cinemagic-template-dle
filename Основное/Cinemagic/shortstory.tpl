<article class="short-mid new-short">
	<a class="new-short__title--link" href="{full-link}">
		<h3 class="new-short__title hover-op">{title}</h3>
	</a>
	<div class='tipbubble new-short__info'>
		<div class="info__head">
			<strong class="info__title">{title}</strong>
			<span class="info__date">{date}</span>
		</div>
		<div class="info__xfs--wrap">
			<div class="info__xfs">
				<div class="info__xf--wrap">
					<span class="info__xf--text">год:</span>
					<b class="info__xf--value">[xfvalue_year]</b>
				</div>
				<div class="info__xf--wrap">
					<span class="info__xf--text">страна:</span>
					<b class="info__xf--value">[xfvalue_countries]</b>
				</div>
				<div class="info__xf--wrap">
					<span class="info__xf--text">возраст:</span>
					<b class="info__xf--value">[xfvalue_age]</b>
				</div>
			</div>
		</div>
		<div class="info__descr">{short-story limit="220"}...</div>
		<div class="new-short__rating">
			<div class="kp"><span class="kp__span">КП</span>
				<b class="kp__value">[xfgiven_rating_kp][xfvalue_rating_kp limit="3"][/xfgiven_rating_kp]</b>
			</div>
			<div class="imdb"><span class="imdb__span">IMDb</span>
				<b class="imdb__value">[xfgiven_rating_imdb][xfvalue_rating_imdb limit="3"][/xfgiven_rating_imdb]</b>
			</div>
		</div> 
	</div>
	<div class="new-short__poster">
		<b class="new-short__i hovertip up-992">i</b>
		[xfnotgiven_last_episode]
		[xfgiven_quality]
		<b class="new-short__q" title="Качество видео">[not-catlist=37][xfvalue_quality][/not-catlist][catlist=37]4k (2160)[/catlist]</b>
		[/xfgiven_quality]
		[/xfnotgiven_last_episode]
		[xfgiven_last_episode]
		<div class="new-short__episode" title="К просмотру доступны [if xfield_last_episode != '1']1-[/if][xfvalue_last_episode] серия [if xfield_last_season != '1']1-[/if][xfvalue_last_season] сезона">
			<span class="episode__value">[xfvalue_last_episode]</span>
			<span class="episode__text last">серия</span>
			<span class="episode__value">[xfvalue_last_season]</span>
			<span class="episode__text">сезон</span>
		</div>
		[/xfgiven_last_episode]
		<a class="new-short__poster--link" href="{full-link}">
			<img class="lazyload new-short__poster--img" data-src="[xfgiven_poster][xfvalue_image_url_poster][/xfgiven_poster][xfnotgiven_poster]{THEME}/images/noposter.svg[/xfnotgiven_poster]" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQMAAAAl21bKAAAAA1BMVEUAAACnej3aAAAAAXRSTlMAQObYZgAAAApJREFUCNdjYAAAAAIAAeIhvDMAAAAASUVORK5CYII=" alt="{title}">
		</a>
		[group=5]
		<a href="javascript: void(0);" onclick="alertDLE(); return false;">
			<span class="new-short__bookmark hover-op" title="Добавить в закладки (смотреть позже)"><i class="icon-bookmark-add"></i></span>
		</a>
		[/group]
		[add-favorites]
		<span class="new-short__bookmark hover-op" title="Добавить в закладки (смотреть позже)"><i class="icon-bookmark-add"></i></span>
		[/add-favorites]
		[del-favorites]
		<span class="new-short__bookmark hover-op" title="Убрать из закладок"><i class="icon-bookmark-remove"></i></span>
		[/del-favorites]
	</div>
	<span class="new-short__cats text-over" title="{category}">{category}</span>
</article>
