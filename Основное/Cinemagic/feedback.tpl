<h1 class="page__title page__title_cat">Обратная связь</h1>
<div class="addform">
	<ul class="ui-form">
		[not-logged]
		<li class="form-group combo">
			<div class="combo_field wide" style="margin-right: 10px;"><input placeholder="Ваше имя" type="text" maxlength="35" name="name" id="name" class="form-group__input hover-op wide" required></div>
			<div class="combo_field wide"><input placeholder="Ваш E-mail" type="email" maxlength="35" name="email" id="email" class="form-group__input hover-op wide" required></div>
		</li>
		[/not-logged]
		<li class="form-group">
			<input placeholder="Тема сообщения" type="text" maxlength="45" name="subject" id="subject" class="form-group__input hover-op wide" required>
		</li>
		<li class="form-group addrst">
			<label class="form-group__label">Получатель: </label>
			{recipient}
		</li>
		<li class="form-group">
			<textarea placeholder="Сообщение" name="message" id="message" rows="5" class="wide" required></textarea>
		</li>
		[recaptcha]
		<li class="form-group">{recaptcha}</li>
		[/recaptcha]
		[question]
		<li class="form-group">
			<label for="question_answer">Вопрос: {question}</label>
			<input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
		</li>
		[/question]
	</ul>
	<div class="form-group">
		[sec_code]
		<div class="c-captcha">
			{code}
			<div class="sec_block">
				<label for="sec_code" class="sec_code--label">Введите код с картинки:</label>
				<input placeholder="Повторите код" title="Введите код c картинке" type="text" name="sec_code" id="sec_code" class="hover-op" required>
			</div>
		</div>
		[/sec_code]
	</div>
	<div class="form_submit form_submit_feedback">
		<button class="major-btn reg_btn hover-op active-op" type="submit" name="send_btn"><b>Отправить сообщение</b></button>
	</div>
</div>
