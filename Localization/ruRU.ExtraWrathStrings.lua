-- [[ Exported at 2023-01-29 12-01-53 ]] --
-- [[ This code is automatically generated as an export from ]] --
-- [[ an SQLite database and is not meant for manual edit. ]] --

-- [[ Namespaces ]] --
local _, addon = ...;
addon.ExtraWrathStrings = {};
addon.ExtraWrathStrings.ruRU = {};
local extraWrathStrings = addon.ExtraWrathStrings.ruRU;

function extraWrathStrings.Load(L)
    if not string.match((GetBuildInfo()), "(%d+)%.(%d+)%.(%d+)(%w?)") == "3" then
        return;
    end


    L["EJ_GetInstanceInfo241"] = "Зул'Фаррак";
    L["EJ_GetInstanceInfo247"] = "Аукенайские гробницы";
    L["EJ_GetInstanceInfo249"] = "Терраса Магистров";
    L["EJ_GetInstanceInfo742"] = "Логово Крыла Тьмы";
    L["EJ_GetInstanceInfo750"] = "Битва за гору Хиджал";
    L["EJ_GetInstanceInfo255"] = "Черные топи";
    L["EJ_GetInstanceInfo258"] = "Механар";
    L["EJ_GetInstanceInfo262"] = "Нижетопь";
    L["EJ_GetInstanceInfo274"] = "Гундрак";
    L["EJ_GetInstanceInfo278"] = "Яма Сарона";
    L["EJ_GetInstanceInfo282"] = "Окулус";
    L["EJ_GetInstanceInfo286"] = "Вершина Утгард";
    L["EJ_GetInstanceInfo743"] = "Руины Ан'Киража";
    L["EJ_GetInstanceInfo751"] = "Черный храм";
    L["EJ_GetInstanceInfo759"] = "Ульдуар";
    L["EJ_GetInstanceInfo1193"] = "Святилище Господства";
    L["EJ_GetInstanceInfo744"] = "Ан'Кираж";
    L["EJ_GetInstanceInfo752"] = "Плато Солнечного Колодца";
    L["EJ_GetInstanceInfo760"] = "Логово Ониксии";
    L["EJ_GetInstanceInfo259"] = "Разрушенные залы";
    L["EJ_GetInstanceInfo271"] = "Ан'кахет: Старое Королевство";
    L["EJ_GetInstanceInfo275"] = "Чертоги Молний";
    L["EJ_GetInstanceInfo279"] = "Очищение Стратхольма";
    L["EJ_GetInstanceInfo283"] = "Аметистовая крепость";
    L["EJ_GetInstanceInfo745"] = "Каражан";
    L["EJ_GetInstanceInfo753"] = "Хранилище Аркавона";
    L["EJ_GetInstanceInfo761"] = "Рубиновое святилище";
    L["EJ_GetInstanceInfo226"] = "Огненная Пропасть";
    L["EJ_GetInstanceInfo228"] = "Глубины Черной горы";
    L["EJ_GetInstanceInfo230"] = "Забытый город";
    L["EJ_GetInstanceInfo232"] = "Мародон";
    L["EJ_GetInstanceInfo234"] = "Лабиринты Иглошкурых";
    L["EJ_GetInstanceInfo236"] = "Стратхольм";
    L["EJ_GetInstanceInfo238"] = "Тюрьма";
    L["EJ_GetInstanceInfo240"] = "Пещеры Стенаний";
    L["EJ_GetInstanceInfo246"] = "Некроситет";
    L["EJ_GetInstanceInfo248"] = "Бастионы Адского Пламени";
    L["EJ_GetInstanceInfo250"] = "Гробницы маны";
    L["EJ_GetInstanceInfo252"] = "Сетеккские залы";
    L["EJ_GetInstanceInfo64"] = "Крепость Темного Клыка";
    L["EJ_GetInstanceInfo256"] = "Кузня Крови";
    L["EJ_GetInstanceInfo260"] = "Узилище";
    L["EJ_GetInstanceInfo272"] = "Азжол-Неруб";
    L["EJ_GetInstanceInfo276"] = "Залы Отражений";
    L["EJ_GetInstanceInfo280"] = "Кузня Душ";
    L["EJ_GetInstanceInfo284"] = "Испытание чемпиона";
    L["EJ_GetInstanceInfo76"] = "Зул'Гуруб";
    L["EJ_GetInstanceInfo77"] = "Зул'Аман";
    L["EJ_GetInstanceInfo747"] = "Логово Магтеридона";
    L["EJ_GetInstanceInfo316"] = "Монастырь Алого ордена";
    L["EJ_GetInstanceInfo1195"] = "Гробница Предвечных";
    L["EJ_GetInstanceInfo1190"] = "Замок Нафрия";
    L["EJ_GetInstanceInfo748"] = "Змеиное святилище";
    L["EJ_GetInstanceInfo756"] = "Око Вечности";
    L["EJ_GetInstanceInfo257"] = "Ботаника";
    L["EJ_GetInstanceInfo261"] = "Паровое подземелье";
    L["EJ_GetInstanceInfo758"] = "Цитадель Ледяной Короны";
    L["EJ_GetInstanceInfo311"] = "Залы Алого ордена";
    L["EJ_GetInstanceInfo273"] = "Крепость Драк'Тарон";
    L["EJ_GetInstanceInfo277"] = "Чертоги Камня";
    L["EJ_GetInstanceInfo281"] = "Нексус";
    L["EJ_GetInstanceInfo285"] = "Крепость Утгард";
    L["EJ_GetInstanceInfo755"] = "Обсидиановое святилище";
    L["EJ_GetInstanceInfo63"] = "Мертвые копи";
    L["EJ_GetInstanceInfo253"] = "Темный лабиринт";
    L["EJ_GetInstanceInfo254"] = "Аркатрац";
    L["EJ_GetInstanceInfo251"] = "Старые предгорья Хилсбрада";
    L["EJ_GetInstanceInfo741"] = "Огненные Недра";
    L["EJ_GetInstanceInfo749"] = "Око Вечности";
    L["EJ_GetInstanceInfo757"] = "Испытание крестоносца";
    L["EJ_GetInstanceInfo746"] = "Логово Груула";
    L["EJ_GetInstanceInfo227"] = "Непроглядная Пучина";
    L["EJ_GetInstanceInfo229"] = "Нижняя часть пика Черной горы";
    L["EJ_GetInstanceInfo231"] = "Гномреган";
    L["EJ_GetInstanceInfo233"] = "Курганы Иглошкурых";
    L["EJ_GetInstanceInfo559"] = "Верхняя часть пика Черной горы";
    L["EJ_GetInstanceInfo237"] = "Храм Атал'Хаккара";
    L["EJ_GetInstanceInfo239"] = "Ульдаман";
    L["EJ_GetInstanceInfo754"] = "Наксрамас";
    L["GetCategoryInfo15218"] = "Каньон Суровых Ветров";
    L["GetCategoryInfo15164"] = "Mists of Pandaria";
    L["GetCategoryInfo15234"] = "Наследие";
    L["GetCategoryInfo15072"] = "Cataclysm";
    L["GetCategoryInfo15266"] = "Честь";
    L["GetCategoryInfo15305"] = "Battle for Azeroth";
    L["GetCategoryInfo15414"] = "Ашран";
    L["GetCategoryInfo15283"] = "Мир";
    L["GetCategoryInfo15074"] = "Два Пика";
    L["GetCategoryInfo15268"] = "Промоакции";
    L["GetCategoryInfo15441"] = "Обители ковенантов";
    L["GetCategoryInfo15439"] = "Shadowlands";
    L["GetCategoryInfo15292"] = "Бурлящий берег";
    L["GetCategoryInfo15426"] = "Видения Н'Зота";
    L["GetCategoryInfo15246"] = "Коллекции";
    L["GetCategoryInfo15440"] = "Торгаст";
    L["GetCategoryInfo15417"] = "Сердце Азерот";
    L["GetCategoryInfo15163"] = "Храм Котмогу";
    L["GetCategoryInfo15073"] = "Битва за Гилнеас";
    L["GetCategoryInfo15162"] = "Сверкающие копи";
    L["GetCategoryInfo15272"] = "Подземелья";
    L["GetCategoryInfo15271"] = "Рейды";
    L["GetCategoryInfo15258"] = "Legion";
    L["GetCategoryInfo15101"] = "Ярмарка Новолуния";
    L["GetCategoryInfo15233"] = "Warlords of Draenor";
    L["GetCategoryInfo15117"] = "Бои питомцев";
    L["GetCategoryInfo15454"] = "Путешествие во времени";
    L["Completed"] = "Завершено";
    L["Not Completed"] = "Не завершено";
end

