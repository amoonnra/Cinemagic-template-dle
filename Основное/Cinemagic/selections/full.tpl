<article class="collect">
	<h1 class="collect__title fs__title">Коллекция «{title}»  <small class="news-num">{count} шт</small></h1>
	<div class="collect__info">
		<div class="collect__img_wrap">
			<img src="{poster}" alt="Коллекция «{title}»" class="collect__img">
		</div>
		<div class="collect__descr">
			<p>{story}</p>
		</div>
	</div>
	[selection-news]
	<section class="collect__news">
		<h2 class="collect_news-title">Новости из коллекции</h2>
		{selection-news}
	</section>
	[/selection-news]
	<img src="{poster}" class="fs__img-blur">
</article>
