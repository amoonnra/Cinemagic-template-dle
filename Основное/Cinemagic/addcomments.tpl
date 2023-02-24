<h3 class="fs__sect_title">Оставить комментарий</h3>
<div id="addcomment" class="addcomment">
	<ul class="ui-form">
		[not-logged]
		<li class="form-group combo">
			<div class="combo_field"><input placeholder="Ваше имя" type="text" name="name" id="name" class="wide" required></div>
		</li>
		[/not-logged]	
		<li id="comment-editor">
			<textarea id="form_comments" class="addcomment__textarea wide" name="comments" onclick="setNewField(this.name, document.getElementById('dle-news-comments'));" placeholder="Сюда текст комментария..."></textarea>
		</li>
		[recaptcha]
		<li>{recaptcha}</li>
		[/recaptcha]
	</ul>
	<div class="form_submit">
		[sec_code]
		<div class="c-captcha">
			{sec_code}
			<div class="sec_block">
				<label for="sec_code" class="sec_code--label">Введите код с картинки</label>
				<input placeholder="Повторите код" title="Введите код c картинке" type="text" name="sec_code" id="sec_code" required>
			</div>
		</div>
		[/sec_code]
		<button class="major-btn addcomment__btn hover-op active-op" type="submit" name="submit" title="Отправить комментарий"><b>Отправить комментарий</b></button>
	</div>
</div>


