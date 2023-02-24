<div class="page__descr">
<b class="page__title" style="display: block; margin-bottom: 15px;">Голосование: <small class="poll__title"> {title}</small></b>
<div id="votes" class="vote--wrap">
	[votelist]
	<form method="post" name="vote">
		[/votelist]
		<div class="vote_list">
			{list}
		</div>
		[voteresult]
		<div class="vote_votes grey">Проголосовало: {votes}</div>
		[/voteresult]
		[votelist]
		<input type="hidden" name="vote_action" value="vote">
		<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
		<div style="margin-top: 15px;">
			<button title="Голосовать" class="bbcodes" style="margin-right: 5px; padding: 12px 30px; vertical-align: bottom;" type="submit" onclick="doVote('vote'); return false;" ><b>Голосовать</b></button>
			<button title="Результаты опроса" class="bbcodes" type="button" onclick="doVote('results'); return false;" >
				<i class="icon-bar-chart"></i>
				<span class="title_hide">Результаты опроса</span>
			</button>
		</div>
	</form>
	[/votelist]
</div>
</div>