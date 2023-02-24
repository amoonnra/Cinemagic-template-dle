<aside class="filter">
	<button type="button" class="filter__btn_close hover-op active-op filter-toogle">
		<i class="filter__btn_close--icon icon-close" title="закрыть"></i>
	</button>
	<span class="filter__title">Мультипоиск</span>
	<div class="filter__wrap">
		<form class="filter__body" data-dlefilter="dle-filter">
			<fieldset class="filter__ranges-block">
				<div class="filter__range">
					<span class="filter__range--title" title="Выберите интервал года премьеры">Год</span>
					<input type="text" class="js-range-slider" id="range range-year" name="r.year" value="" data-type="double" data-min="1960" data-max="2022" data-grid="true"/>
				</div>
				<div class="filter__range">
					<span class="filter__range--title" title="Выберите интервал рейтинга КиноПоиска">КП</span>
					<input type="text" class="js-range-slider" id="range range-rating_kp" name="r.rating_kp" value="" data-type="double" data-min="0" data-max="10" data-step=".1" data-grid="true"/>
				</div>
				<div class="filter__range">
					<span class="filter__range--title" title="Выберите интервал рейтинга IMDb">IMDb</span>
					<input type="text" class="js-range-slider" id="range range-rating_imdb" name="r.rating_imdb" value="" data-type="double" data-min="0" data-max="10" data-step=".1" data-grid="true"/>
				</div>
			</fieldset>
			<fieldset class="filter__selects-block">
				<div class="filter__select-wrap">
					<span class="filter__select--tittle op1" title="Вы можете выбрать несколько жанров">Жанр:</span>
					<select multiple name="cat" class="filter__select hover-op"  data-placeholder="Выберите жанр...">
						<option value="" label="Вы можете выбрать несколько жанров"></option>
						<option value="38">Новинки 2021</option>
						<option value="37">4K качество</option>
						<option value="9">Комедии</option>
						<option value="10">Драма</option>
						<option value="11">Приключения</option>
						<option value="12">Триллеры</option>
						<option value="13">Детективы</option>
					</select>
				</div>
				<div class="filter__select-wrap">
					<span class="filter__select--tittle op1" title="Вы можете выбрать несколько подборок">Подборка:</span>
					<select multiple name="collections" class="filter__select hover-op" data-placeholder="Выберите подборку...">
						<option value="ТНТ">ТНТ</option>
						<option value="YouTube Premium">YouTube Premium</option>
						<option value="Discovery">Discovery</option>
						<option value="National Geographic">National Geographic</option>
						<option value="BBC">BBC</option>
						<option value="Fox">Fox</option>
						<option value="Amazon">Amazon</option>
						<option value="Apple TV+">Apple TV+</option>
						<option value="Про докторов">Про докторов</option>
					</select>
				</div>
				<div class="filter__select-wrap">
					<span class="filter__select--tittle op1" title="Вы можете выбрать несколько стран">Страна:</span>
					<select multiple name="countries" class="filter__select hover-op" data-placeholder="Выберите страну...">
						<option value="США">США</option>
						<option value="Великобритания">Великобритания</option>
						<option value="Франция">Франция</option>
						<option value="Бразилия">Бразилия</option>
						<option value="Германия">Германия</option>
						<option value="Испания">Испания</option>
					</select>
				</div>
				<div class="filter__select-wrap">
					<span class="filter__select--tittle op1" title="Вы можете выбрать несколько возрастных рейтингов">Возраст:</span>
					<select multiple name="age" class="filter__select hover-op" data-placeholder="Выберите возрастной рейтинг...">
						<option value="0+">0+</option>
						<option value="6+">6+</option>
						<option value="12+">12+</option>
						<option value="16+">16+</option>
						<option value="18+">18+</option>
					</select>
				</div>
				<div class="filter__select-wrap">
					<span class="filter__select--tittle op1" title="Выберите перевод (озвучку)">Перевод:</span>
					<select name="all_translator" class="filter__select hover-op" data-placeholder="Выберите перевод (озвучку)...">
						<option value="" label="Выберите возрастной рейтинг..."></option>
						<option value="Рус. Дублированный">Дублированный</option>
						<option value="Рус. Проф. многоголосый ">Проф. многоголосый </option>
						<option value="Lostfilm">Lostfilm</option>
						<option value="Кубик в кубе">Кубик в кубе</option>
						<option value="Netflix">Netflix</option>
						<option value="Пифагор">Пифагор</option>
					</select>
				</div>
			</fieldset>
			<fieldset class="filter__inputs-block">
				<div class="filter__input-wrap">
					<span class="filter__input--tittle op1" title="Введите имя актера">Актер:</span>
					<input class="filter__input hover-op" type="text" name="actors" value="" placeholder="Введите имя актера... ">
				</div>
				<div class="filter__input-wrap">
					<span class="filter__input--tittle op1"  title="Введите имя режжисера">Режжисер:</span>
					<input class="filter__input hover-op" type="text" name="directors" value="" placeholder="Введите имя режжисера... ">
				</div>
				<div class="filter__input-wrap">
					<input class="filter__input hover-op" type="text" name="l.title" value="" placeholder="Введите слово из названия... ">
				</div>
			</fieldset>
			<fieldset class="filter__select-sort">
				<div class="filter__select-wrap">
					<select name="sort" class="filter__select hover-op" data-placeholder="Сортировать по...">
						<option value="" label="Сортировать по..."></option>
						<option value="date">дате добавления</option>
						<option value="title">алфавиту</option>
						<option value="news_read">количеству просмотров</option>
						<option value="rating">рейтингу</option>
						<option value="d.year">году премьеры</option>
					</select>
				</div>
				<div class="filter__select-wrap">
					<select name="order" class="filter__select hover-op" data-placeholder="В порядке...">
						<option value="" label="В порядке..."></option>
						<option value="desc">убывания</option>
						<option value="asc">возрастания</option>
					</select>
				</div>
			</fieldset>
			<fieldset class="filter__switches-block">
				<div class="filter__switches-block_column">
					<div class="filter__switch-wrap">
						<input type="checkbox" name="p.cat" value="1" class="switch-input" id="switch-1" />
						<label class="switch hover-op" for="switch-1">Фильм</label>
						<span>Фильм</span>
					</div>
					<div class="filter__switch-wrap">
						<input type="checkbox" name="p.cat" value="2" class="switch-input" id="switch-2" />
						<label class="switch hover-op" for="switch-2">Сериал</label>
						<span>Сериал</span>
					</div>
				</div>
				<div class="filter__switches-block_column">
					<div class="filter__switch-wrap">
						<input type="checkbox" name="p.cat" value="3" class="switch-input" id="switch-3" />
						<label class="switch hover-op" for="switch-3">Мультфильм</label>
						<span>Мультфильм</span>
					</div>
					<div class="filter__switch-wrap">
						<input type="checkbox" name="p.cat" value="4" class="switch-input" id="switch-4" />
						<label class="switch hover-op" for="switch-4">Мультсериал</label>
						<span>Мультсериал</span>
					</div>
				</div>
				<div class="filter__switches-block_column">
					<div class="filter__switch-wrap">
						<input type="checkbox" name="p.cat" value="5" class="switch-input" id="switch-5" />
						<label class="switch hover-op" for="switch-5">ТВ шоу</label>
						<span>ТВ шоу</span>
					</div>
					<div class="filter__switch-wrap">
						<input type="checkbox" name="p.cat" value="6" class="switch-input" id="switch-6" />
						<label class="switch hover-op" for="switch-6">Аниме</label>
						<span>Аниме</span>
					</div>
				</div>
			</fieldset>
			<fieldset class="filter__btns">
				<input type="button" data-dlefilter="submit" value="Поиск" class="filter__btn_search hover-op active-op">
				<input type="reset" data-dlefilter="reset" value="Очистить" class="filter__btn_clear active-op">
			</fieldset>
		</form>
	</div>
</aside>

