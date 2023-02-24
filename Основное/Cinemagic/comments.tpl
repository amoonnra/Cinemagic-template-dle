<div class="comment" id="{comment-id}">
	<div class="com_info">
		<div class="avatar">
			[profile]<span class="cover" style="background-image: url({foto});">{login}</span>[/profile]
		</div>
		<div class="com_user">
			<b class="name hover-op active-op text-over">{author}</b>
			<span class="op1 com_time">
				{date}
			</span>
		</div>
		<div class="meta">
			<ul class="meta__right">
				<li class="reply meta__link hover-op active-op" title="Цитировать">[fast]<i class="icon-conversation meta__link--icon"></i><b class="up-576">ответить</b>[/fast]</li>
				[not-group=5] 
				<li class="del meta__link hover-op active-op" title="Удалить">[com-del]<i class="icon-delete meta__link--icon"></i>[/com-del]</li>
				<li class="mass">{mass-action}</li>
				[/not-group]
			</ul>
			[rating]
			<div class="rate">
				[rating-type-2]
				<div class="rate_like hover-op active-op">
					[rating-plus]
					<i class="icon-favorite rate_like--icon"></i>
					{rating}
					[/rating-plus]
				</div>
				[/rating-type-2]
			</div>
			[/rating]
		</div>
		
	</div>
	<div class="com_content">
		[available=lastcomments|search]<h2 class="com__title">{news_title}</h2>[/available]
		<div class="text">{comment}</div>
		[signature]<div class="signature">--------------------<br/>{signature}</div>[/signature]
	</div>
</div>



