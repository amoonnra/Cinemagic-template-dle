
<h1 class="page__title page__title_cat">Восстановление пароля</h1>
<div class="page_form--wrap">
	<ul class="ui-form lostpas_form">
		<li class="form-group">
			<label for="lostname" class="form-group__label">Логин или E-mail:</label>
			<input type="text" name="lostname" id="lostname" class="form-group__input" required>
		</li>
		[sec_code]
		<li class="form-group">
			<div class="c-captcha">
				{code}
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
	</ul>
	<div class="form_submit">
		<button class="major-btn reg_btn hover-op active-op" name="submit" type="submit"><b>Восстановить</b></button>
	</div>
</div>
