<h1 class="page__title page__title_cat">
	[registration]Регистрация[/registration]
	[validation]Продолжение регистрации[/validation]
</h1>
<div class="page_form--wrap">
	[validation]
	<div class="reg_text">
		Ваш аккаунт был зарегистрирован на нашем сайте,
		однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
	</div>
	[/validation]
	<ul class="ui-form reg_form">
		[registration]
		<li class="form-group">
			<label for="name" class="form-group__label">Логин:</label>
			<div class="login_check">
				<input type="text" placeholder="Введите логин..." name="name" id="name" class="form-group__input hover-op wide" required>
				<button class="login_check__btn hover-op active-op" title="Проверить" onclick="CheckLogin(); return false;">Проверить</button>
			</div>
			<div id="result-registration"></div>
		</li>
		<li class="form-group">
			<label for="password1" class="form-group__label">Пароль:</label>
			<input type="password" placeholder="Введите пароль..." name="password1" id="password1" class="form-group__input hover-op" required>
		</li>
		<li class="form-group">
			<label for="password2" class="form-group__label">Повторите пароль:</label>
			<input type="password" placeholder="Повторите пароль..." name="password2" id="password2" class="form-group__input hover-op" required>
		</li>
		<li class="form-group">
			<label for="email" class="form-group__label">E-mail:</label>
			<input type="email" placeholder="Введите E-mail..." name="email" id="email" class="form-group__input hover-op" required>
		</li>
		[question]
		<li class="form-group">
			<label for="question_answer" class="form-group__label">{question}</label>
			<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
		</li>
		[/question]
		[sec_code]
		<li class="form-group">
			<div class="c-captcha">
				{reg_code}
				<div class="sec_block">
					<label for="sec_code" class="sec_code--label">Введите код с картинки:</label>
					<input placeholder="Повторите код" title="Введите код c картинке" type="text" name="sec_code" id="sec_code" class="hover-op" required>
				</div>
			</div>
		</li>
		[/sec_code]
		[recaptcha]
		<li>{recaptcha}</li>
		[/recaptcha]
		[/registration]
		[validation]
			<li class="form-group">
				<label for="fullname" class="form-group__label">Ваше имя</label>
				<input type="text" id="fullname" name="fullname" class="form-group__input hover-op">
			</li>
			<li class="form-group">
				<label for="land" class="form-group__label">Место жительства</label>
				<input type="text" id="land" name="land" class="form-group__input hover-op">
			</li>
			<li class="form-group">
				<label for="image" class="form-group__label">О себе</label>
				<textarea id="info" name="info" rows="5" class="form-group__input hover-op"></textarea>
			</li>
			<li class="form-group" style="margin-bottom: 25px;">
				<label for="image" class="form-group__label">Аватар</label>
				<input type="file" id="image" name="image" class="form-group__input hover-op">
			</li>
		[/validation]
	</ul>
	<div class="form_submit">
		<button class="major-btn reg_btn hover-op active-op" name="submit" type="submit"><b>Зарегистрироваться</b></button>
	</div>
</div>
