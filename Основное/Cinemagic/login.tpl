[not-group=5]
<div class="login__box logged">
	<div class="logged__wrap">
		<div class="logged__avatar">
			<img class="logged__avatar--img" src="{foto}" title="{login}" alt="{login}" />
		</div>
		<span class="login__title text-over">{login}</span>
		[group=1]<a href="{admin-link}" class="logged__admin hover-op active-op" target="_blank">Админпанель</a>[/group]
		<ul class="logged__menu">
			<li class="logged__li"><a class="logged__link hover-op active-op" href="{profile-link}"><i class="icon-user icon-left"></i>Мой профиль</a></li>
			<li class="logged__li"><a class="logged__link hover-op active-op" href="{favorites-link}"><i class="icon-bookmark icon-left"></i><span>Мои закладки ({favorite-count})</span></a></li>
			<li class="logged__li"><a class="logged__link hover-op active-op" href="{pm-link}"><i class="icon-mail icon-left"></i><span>Сообщения: ({new-pm})</span></a></li>
			[group=1]<li class="logged__li"><a class="logged__link hover-op active-op" href="{stats-link}"><i class="icon-line-chart icon-left"></i>Статистика</a></li>[/group]
			<li class="logged__li"><a class="logged__link hover-op active-op" href="/?do=lastcomments"><i class="icon-conversation icon-left"></i>Комментарии</a></li>
			<li class="logged__li"><a class="logged__link hover-op active-op" href="{addnews-link}"><i class="icon-post-add icon-left"></i>Добавить пост</a></li>
			<li class="logged__li"><a class="logged__link hover-op active-op" href="{logout-link}"><i class="icon-log-out-outline icon-left"></i></span>Выйти</a></li>
		</ul>
	</div>
</div>
[/not-group]
[group=5]
<div class="login__box not-logged">
	<form class="login__form" method="post">
		<span class="login__title">Авторизация</span>
		<ul class="login__form_ul">
			<li class="login__form__field">
				<label for="login_name" class="login__form__label">{login-method}</label>
				<input placeholder="{login-method}" type="text" name="login_name" id="login_name" class="login__form__input">
				<i class="login__form--icon icon-profile-circle icon-left"></i>
			</li>
			<li class="login__form__field">
				<label for="login_password" class="login__form__label">Пароль</label>
				<input placeholder="Пароль" type="password" name="login_password" id="login_password" class="login__form__input">
				<i class="login__form--icon icon-lock-open icon-left"></i>
			</li>
		</ul>
		<div class="soc_links">
			<ul class="login__soc">
				[yandex]<li class="login__soc--li"><a href="{yandex_url}" target="_blank" class="login__soc--link soc_ya"><i class="shar-icon icon-yandex"></i></a></li>[/yandex]
				[vk]<li class="login__soc--li"><a href="{vk_url}" target="_blank" class="login__soc--link soc_vk"><i class="shar-icon icon-vk"></i></a></li>[/vk]
				[odnoklassniki]<li class="login__soc--li"><a href="{odnoklassniki_url}" target="_blank" class="login__soc--link soc_ok"><i class="shar-icon icon-odnoklassniki"></i></a></li>[/odnoklassniki]
				[facebook]<li class="login__soc--li"><a href="{facebook_url}" target="_blank" class="login__soc--link soc_fb"><i class="shar-icon icon-facebook"></i></a></li>[/facebook]
				[mailru]<li class="login__soc--li"><a href="{mailru_url}" target="_blank" class="login__soc--link soc_mr"><i class="shar-icon icon-mailru"></i></a></li>[/mailru]
			</ul>
		</div>
		<button class="major-btn login__btn hover-op active-op" onclick="submit();" type="submit" title="Войти"><b>Войти</b></button>
		<input name="login" type="hidden" id="login" value="submit" />
		<div class="login_form__ftr">
			<a class="login__btn_regist active-op" href="{registration-link}">Регистрация</a>
			<a class="hover-op active-op" href="{lostpassword-link}">Забыли пароль?</a>
		</div>
	</form>
</div>
[/group]
