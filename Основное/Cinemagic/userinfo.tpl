<div class="uinfo tabs">
	<div class="uinfo__header">
		<div class="uinfo__header_block-left avatar">
			<a href="#"><span class="cover" style="background-image: url({foto});"></span></a>
		</div>
		<div class="uinfo__header_block-right">
			<h1 class="uinfo__name page__title page__title_cat"><small>пользователь: </small>{usertitle}</h1>
			<div class="uinfo__links">
				<ul class="tabs__caption">
					<li class="tabs__link active">Информация</li>
					[not-logged]<li class="tabs__link">Редактировать</li>[/not-logged]
				</ul>
				[not-group=5]<span class="tabs__link">{pm}</span>[/not-group]
			</div>
		</div>
	</div>
	<div class="uinfo__content">
		<div class="tabs__content active">
			<ul class="uinfo__info-block">
				<li class="uindo__info"><span class="ui-c1">Имя:</span> <div class="ui-c2">{fullname}[not-fullname]Неизвестно[/not-fullname]</div></li>
				<li class="uindo__info"><span class="ui-c1">Место жительства:</span> <div class="ui-c2">{land}[not-land]Неизвестно[/not-land]</div></li>
				<li class="uindo__info"><span class="ui-c1">Группа:</span> <div class="ui-c2">{status}</div></li>
				<li class="uindo__info"><span class="ui-c1">Статус:</span> <div class="ui-c2">[online]<span style="color: #70bb39;">Онлайн</span>[/online][offline]Офлайн[/offline]</div></li>
				<li class="uindo__info"><span class="ui-c1">Зарегистрирован:</span> <div class="ui-c2 ui-c2_small">{registration}</div></li>
				<li class="uindo__info"><span class="ui-c1">Последняя активность:</span> <div class="ui-c2 ui-c2_small">{lastdate}</div></li>
			</ul>
			<ul class="uinfo__info-block uinfo__info-block_2">
				<li class="uindo__info"><span class="ui-c1">Кол-во публикаций:</span> <div class="ui-c2">{news-num} шт</div><span class="ui-c2--link hover-op">{news}</span></li>
				<li class="uindo__info"><span class="ui-c1">Кол-во комментариев:</span> <div class="ui-c2">{comm-num} шт</div><span class="ui-c2--link hover-op">{comments}</span></li>
				<li class="uindo__info"><span class="ui-c1">Рейтинг публикаций:</span> <div class="ui-c2 ui-c2_big">{rate}</div></li>
				<li class="uindo__info"><span class="ui-c1">Рейтинг комментариев:</span> <div class="ui-c2 ui-c2_big">{commentsrate}</div></li>
			</ul>
		</div>
		[not-logged]
		<div class="tabs__content" >
			<!-- Настройки пользователя -->
			<div id="options">
				<div class="addform">
					<ul class="ui-form reg_form uinfo__form">
						<li class="form-group">
							<label for="fullname" class="form-group__label">Ваше имя:</label>
							<input type="text" name="fullname" id="fullname" value="{fullname}" placeholder="Введите ваше имя (если хотите) ..." class="form-group__input hover-op">
						</li>
						<li class="form-group">
							<label for="land" class="form-group__label">Место проживания:</label>
							<input type="text" name="land" id="land" value="{land}" placeholder="Введите ваше место проживания (если хотите) ..."  class="form-group__input hover-op">
						</li>
						<li class="form-group">
							<label for="email" class="form-group__label">Ваш e-mail:</label>
							<input type="email" name="email" id="email" value="{editmail}" placeholder="Введите ваш e-mail..." class="form-group__input hover-op" required>
						</li>
						<li class="checkbox form-group" style="margin-bottom: 20px;">
							<label class="form-group__label up-576"></label>
							{hidemail}
						</li>
						<li class="form-group">
							<label class="form-group__label">Часовой пояс:</label>
							{timezones}
						</li>
						<li class="form-group form-sep"></li>
						<li class="form-group">
							<label for="altpass" class="form-group__label">Старый пароль:</label>
							<input type="password" name="altpass" id="altpass" placeholder="Введите ваш старый пароль..." class="form-group__input hover-op">
						</li>
						<li class="form-group">
							<label for="password1" class="form-group__label">Новый пароль:</label>
							<input type="password" name="password1" id="password1" placeholder="Введите новый пароль..." class="form-group__input hover-op">
						</li>
						<li class="form-group">
							<label for="password2" class="form-group__label">Повторите новый пароль:</label>
							<input type="password" name="password2" id="password2" placeholder="Повторите новый пароль..." class="form-group__input hover-op">
						</li>
						<li class="form-group form-sep"></li>
						<li class="form-group">
							<label for="image" class="form-group__label">Загрузите аватар:</label>
							<input type="file" name="image" id="image">
						</li>
						<li class="form-group">
							<label class="form-group__label up-576"></label>
							<div class="checkbox">
								<input type="checkbox" name="del_foto" id="del_foto" value="yes" /> 
								<label for="del_foto">Удалить аватар</label>
							</div>
						</li>
						<li class="form-group form-sep"></li>
						[group=1,2,3]
						<li class="form-group">
							<label for="allowed_ip" class="form-group__label">Блокировка по IP:</label>
							<textarea placeholder="Примеры: 192.48.25.71 or 129.42.*.*" name="allowed_ip" id="allowed_ip" rows="5" class="field form-group__input hover-op">{allowed-ip}</textarea>
						</li>
						[/group]
						<li class="form-group">
							<table class="xfields">
								{xfields}
							</table>
						</li>
						<li class="form-group">
							<div class="checkbox">{twofactor-auth}</div>
						</li>
						<li class="form-group">
							<div class="checkbox">{news-subscribe}</div>
						</li>
						<li class="form-group">
							<div class="checkbox">{comments-reply-subscribe}</div>
						</li>
						<li class="form-group">
							<div class="checkbox">{unsubscribe}</div>
						</li>
					</ul>
					<div class="form_submit">
						<button class="save-btn major-btn reg_btn hover-op active-op" name="submit" type="submit"><b>Сохранить</b></button>
						<input name="submit" type="hidden" id="submit" value="submit">
					</div>
				</div>
			</div>
			<!-- / Настройки пользователя -->
		</div>
		[/not-logged]
		<img src="{foto}" alt="Аватарка пользователя: {usertitle}" class="fs__img-blur">
	</div>
</div>

