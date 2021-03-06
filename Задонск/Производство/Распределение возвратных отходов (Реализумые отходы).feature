#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	# "ГоловинАА" "211279Аа" "мастер сменный"
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	Когда В панели разделов я выбираю 'Производство'
	Тогда открылось окно 'Внутренние документы (все)_(Январь * г.)'
	И В панели функций я выбираю 'Документы производства (все)'
	Тогда открылось окно 'Документы производства (все)'
	И в таблице "СписокДокументыПроизводства" я нажимаю на кнопку с именем 'Создать_ВыпускПродукции_РаспределениеВозвратныхОтходов'
	Тогда открылось окно 'Распределение возвратных отходов (создание)'
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'                       |
		| '00-000055' | 'Задонск хлебобулочное производство' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Распределение возвратных отходов (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в поле 'СтрокаПоискаНоменклатура' я ввожу текст 'реализ'
	И я перехожу к следующему реквизиту
	И в таблице "ВидыНоменклатуры" я перехожу к строке:
		| 'Наименование'          |
		| 'Вспомогательное сырье' |
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование'       |
		| 'Реализуемые отходы' |
	И я нажимаю на кнопку с именем 'СписокРасширенныйПоискНоменклатураВыбратьЗначениеНоменклатуры'
	Тогда открылось окно 'Распределение возвратных отходов (создание) *'
	И в поле с именем 'Количество' я ввожу текст '1,000'
	И в поле 'Цена' я ввожу текст '1,00'
	И из выпадающего списка "Смена" я выбираю точное значение '1'
	И в поле 'Комментарий' я ввожу текст 'реализуемые отходы'
	И я нажимаю на кнопку 'Указать серии'
	Тогда открылось окно 'Регистрация серий товаров'
	И я нажимаю на кнопку 'Сгенерировать номер'
	И в таблице "Серии" я выбираю текущую строку
	И в таблице "Серии" в поле 'Годен до (дата)' я ввожу текст '31.05.19'
	И я перехожу к следующему реквизиту
	И в таблице "Серии" я завершаю редактирование строки
	И в таблице "Серии" я активизирую поле с именем "СерииКоличествоУпаковок"
	И в таблице "Серии" в поле 'Количество, кг' я ввожу текст '1,000'
	И в таблице "Серии" я завершаю редактирование строки
	И я нажимаю на кнопку 'Завершить'
	Тогда открылось окно 'Распределение возвратных отходов (создание) *'
	И я перехожу к закладке "По правилу"
	И в поле с именем 'КоличествоПоПравилу' я ввожу текст '1,000'
	И я перехожу к закладке "По партиям производства"
	И я перехожу к закладке "По расходам"
	И я перехожу к закладке "Дополнительно"
	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'Распределение возвратных отходов (создание) *' в течение 20 секунд
