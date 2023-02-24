<div class="pm--wrap">
<h1 class="page__title page__title_cat">Личные сообщения</h1>
<div class="pm-box">
	<nav id="pm-menu">
		[inbox]<span class="pmlink active-op">Входящие</span>[/inbox]
		[outbox]<span class="pmlink active-op">Отправленные</span>[/outbox]
		[new_pm]<span class="pmlink active-op">Написать новое сообщение</span>[/new_pm]
	</nav>
	<div class="pm_status">
		{pm-progress-bar}
		{proc-pm-limit} % / ({pm-limit} сообщений)
	</div>
</div>
[pmlist]
<div class="pmlist">
	{pmlist}
</div>
[/pmlist]
[newpm]
<h2 class="pm__heading">Создать сообщение</h2>
<div class="addpm">
	<ul class="ui-form">
		<li class="form-group combo">
			<div class="combo_field" style="margin-right: 10px;">
				<input placeholder="Имя адресата..." type="text" name="name" value="{author}" class="form-group__input hover-op wide" required>
			</div>
			<div class="combo_field">
				<input placeholder="Тема сообщения..." type="text" name="subj" value="{subj}" class="form-group__input hover-op wide" required>
			</div>
		</li>
		<li id="comment-editor"><textarea name="comments" id="comments" rows="6" placeholder="Содержание сообщения..." class="form-group__input hover-op wide"></textarea></li>
		<li  style="margin: 12px 0;"><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">Сохранить сообщение в папке "Отправленные"</label></li>  
		[recaptcha]
		<li>{recaptcha}</li>
		[/recaptcha]
		[question]
		<li class="form-group">
			<label for="question_answer">Вопрос: {question}</label>
			<input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
		</li>
		[/question]
	</ul>
	<div class="form_submit">
		[sec_code]
			<div class="c-captcha">
				{sec_code}
				<div class="sec_block">
					<label for="sec_code" class="sec_code--label">Введите код с картинки:</label>
					<input placeholder="Повторите код" title="Введите код c картинке" type="text" name="sec_code" id="sec_code" class="hover-op" required>
				</div>
			</div>
		[/sec_code]
		<div class="pmsend__btns">
		<button class="major-btn pmsend-btn hover-op active-op" type="submit" name="add"><b>Отправить</b></button>
		<button class="bbcodes hover-op active-op" type="button" onclick="dlePMPreview()">Предпросмотр</button>
		</div>
	</div>
</div>
[/newpm]

[readpm]

<div class="comment" id="{comment-id}">
	<div class="com_info">
		<div class="avatar">
			<span class="cover" style="background-image: url({foto});">{login}</span>
		</div>
		<div class="com_user">
			<b class="name">{author}</b>
			<span class="grey">
				от {date}
			</span>
		</div>
		<div class="meta">
			<ul class="right">
				<li class="del meta__link hover-op active-op" title="Удалить">[del]<i class="icon-delete meta__link--icon"></i>[/del]</li>
			</ul>
		</div>
	</div>
		<div class="com_content">
		<h2 class="com__title">{subj}</h2>
		<div class="text">{text}</div>
		[signature]<div class="signature">--------------------<br/>{signature}</div>[/signature]
	</div>
</div>

[/readpm]
</div>