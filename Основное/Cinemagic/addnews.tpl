<div class="addnew--wrap wide">
<h1 class="page__title page__title_cat">Добавить новость</h1>
<div class="addform">
	<ul class="ui-form addnew_form">
		<li class="form-group">
			<label for="title" class="imp form-group__label">Заголовок:</label>
			<input type="text" placeholder="Введите заголовок новости..." name="title" id="title" value="{title}" class="form-group__input hover-op" required>
		</li>
		[urltag]
		<li class="form-group">
			<label for="alt_name" class="imp form-group__label">URL новости:</label>
			<input type="text" name="alt_name" id="alt_name" value="{alt-name}" class="form-group__input hover-op">
		</li>
		[/urltag]
		<li class="form-group cat">
			<label for="category" class="imp form-group__label">Категория:</label>
			{category}
		</li>
		<li class="form-group descr">
			<label for="short_story" class="imp">Краткое описание:</label>
			[not-wysywyg]
			<div class="bb-editor">
				{bbcode}
				<textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="10" class="wide" required>{short-story}</textarea>
			</div>
			[/not-wysywyg]
			{shortarea}
		</li>
		<li class="form-group descr">
			<label for="full_story">Полное описание:</label>
			[not-wysywyg]
			<div class="bb-editor">
				{bbcode}
				<textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="12" class="wide" >{full-story}</textarea>
			</div>
			[/not-wysywyg]
			{fullarea}
		</li>
		<li class="form-group xfs">
			<table style="width:100%">
				{xfields}
			</table>
		</li>
		<li class="form-group">
			<label for="alt_name" class="form-group__label">Ключевые слова:</label>
			<input placeholder="Вводите через запятую" type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" class="form-group__input hover-op">
		</li>
		<li class="form-group">
			<div class="admin_checkboxs">{admintag}</div>
		</li>
		[recaptcha]
		<li class="form-group">{recaptcha}</li>
		[/recaptcha]
		[question]
		<li class="form-group">
			<label for="question_answer">{question}</label>
			<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
		</li>
		[/question]
	</ul>
	<p style="margin: 20px 0;" class="grey"><span style="color: #e85319">*</span> — поля отмеченные звездочкой обязательны для заполнения.</p>
	<div class="form-group">
		[sec_code]
		<div class="c-captcha">
			{sec_code}
			<div class="sec_block">
				<label for="sec_code" class="sec_code--label">Введите код с картинки:</label>
				<input placeholder="Повторите код" title="Введите код c картинке" type="text" name="sec_code" id="sec_code" class="hover-op" required>
			</div>
		</div>
		[/sec_code]
	</div>
	<div class="form_submit pmsend__btns">
		<button class="major-btn pmsend-btn hover-op active-op" type="submit" name="add"><b>Отправить</b></button>
		<button class="bbcodes" onclick="preview()" type="submit" name="nview"><b>Предпросмотр</b></button>
	</div>
</div>
</div>