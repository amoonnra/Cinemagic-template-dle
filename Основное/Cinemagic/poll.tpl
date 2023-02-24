<strong class="fs__sect_title">Опрос: <small class="poll__title"> {question}</small></strong>
<div class="vote--wrap">
		<div class="vote_list">
			{list}
		</div>
	[voted]
		<div class="vote_votes grey">Проголосовало: {votes}</div>
	[/voted]
	[not-voted]
	<div style="margin-top: 15px;">
		<button title="Голосовать" class="bbcodes" type="submit" style="margin-right: 5px; padding: 12px 30px; vertical-align: bottom;" onclick="doPoll('vote', '{news-id}'); return false;" ><b>Голосовать</b></button>
		<button title="Результаты опроса" class="bbcodes" type="button" onclick="doPoll('results', '{news-id}'); return false;">
			<i class="icon-bar-chart"></i>
			<span class="title_hide">Результаты опроса</span>
		</button>
	</div>
	[/not-voted]
</div>