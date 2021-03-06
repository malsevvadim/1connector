#Использовать "../internal"

Перем ВремяВыполнения Экспорт;
Перем Cookies Экспорт;
Перем Заголовки Экспорт;
Перем ЭтоПостоянныйРедирект Экспорт;
Перем ЭтоРедирект Экспорт;
Перем Кодировка Экспорт;
Перем КодСостояния Экспорт;
Перем URL Экспорт;
Перем мИсходныйОтвет;
Перем мПараметрыПреобразованияJSON;

Процедура ПриСозданииОбъекта(ИсходныйОтвет, ПараметрыПреобразованияJSON)
	мИсходныйОтвет = ИсходныйОтвет;
	мПараметрыПреобразованияJSON = ПараметрыПреобразованияJSON;
КонецПроцедуры

Функция Json() Экспорт

	Возврат КоннекторHTTPСлужебный.JsonВОбъект(Текст(Кодировка), мПараметрыПреобразованияJSON);
	
КонецФункции

Функция Текст(КодировкаТекста = Неопределено) Экспорт

	Если Не ЗначениеЗаполнено(КодировкаТекста) Тогда
		Если ЗначениеЗаполнено(Кодировка) Тогда
			КодировкаТекста = Кодировка;
		Иначе
			КодировкаТекста = "utf-8";
		КонецЕсли;
	КонецЕсли;
	
	Результат = мИсходныйОтвет.ПолучитьТелоКакСтроку(КодировкаТекста);

	Если Результат = Неопределено Тогда
		Результат = "";
	КонецЕсли;

	Возврат Результат;

КонецФункции

Функция ДвоичныеДанные() Экспорт

	Возврат мИсходныйОтвет.ПолучитьТелоКакДвоичныеДанные();

КонецФункции