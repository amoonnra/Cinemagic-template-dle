<div class="stats--wrap">

		<h1 class="page__title page__title_cat">Статистика сайта</h1>
		<ul class="stats__top--wrap">
			<li class="stats__top stats_d"><b class="stats_top--title">За сутки:</b> <span class="stats_top--value"> <b>{news_day}</b> новостей и <b>{comm_day}</b> комментариев, зарегистрировано <b>{user_day}</b> пользователей</span></li>
			<li class="stats__top stats_w"><b class="stats_top--title">За неделю:</b> <span class="stats_top--value"><b>{news_week}</b> новостей и <b>{comm_week}</b> комментариев, зарегистрировано <b>{user_week}</b> пользователей</span></li>
			<li class="stats__top stats_m"><b class="stats_top--title">За месяц:</b> <span class="stats_top--value"><b>{news_month}</b> новостей и <b>{comm_month}</b> комментариев, зарегистрировано <b>{user_month}</b> пользователей</span></li>
		</ul>


		<div class="statistics">
			<div class="stat_group">
				<h2 class="stat_group__title">Новости:</h2>
				<ul class="stat_group--ul">
					<li class="stat__item uindo__info"><span class="ui-c1">Общее кол-во новостей:</span> <b class="ui-c2 ui-c2_big">{news_num}</b></li>
					<li class="stat__item uindo__info"><span class="ui-c1">Из них опубликовано:</span> <b class="ui-c2 ui-c2_big">{news_allow}</b></li>
					<li class="stat__item uindo__info"><span class="ui-c1">Опубликовано на главной:</span> <b class="ui-c2 ui-c2_big">{news_main}</b></li>
					<li class="stat__item uindo__info"><span class="ui-c1">Ожидает модерации:</span> <b class="ui-c2 ui-c2_big">{news_moder}</b></li>
				</ul>
			</div>
			<div class="stat_group">
				<h2 class="stat_group__title">Пользователи:</h2>
				<ul class="stat_group--ul">
					<li class="stat__item uindo__info"><span class="ui-c1">Общее кол-во пользователей:</span> <b class="ui-c2 ui-c2_big">{user_num}</b></li>
					<li class="stat__item uindo__info"><span class="ui-c1">Из них забанено:</span> <b class="ui-c2 ui-c2_big">{user_banned}</b></li>
				</ul>
			</div>
			<div class="stat_group">
				<h2 class="stat_group__title">Комментарии:</h2>
				<ul class="stat_group--ul">
					<li class="stat__item uindo__info"><span class="ui-c1">Кол-во комментариев:</span> <b class="ui-c2 ui-c2_big">{comm_num}</b></li>
					<li class="stat__item uindo__info" style="justify-content: center;"><a href="/?do=lastcomments" class="ui-c2 ui-c2_small hover-op">Посмотреть<br> последние</a></li>
				</ul>
			</div>
		</div>
		<div class="stat_data"><span class="stat_data--test">Общий размер базы данных:</span> <b class="stat_data--value">{datenbank}</b></div>
		<h2 class="pm__heading">Лучшие пользователи</h2>
		<div class="table_top_users">
			<table class="userstop">{topusers}</table>
		</div>

</div>