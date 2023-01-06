-- [[ Namespaces ]] --
local _, addon = ...;
local diagnostics = addon.Diagnostics;
addon.Options = {}; -- Will be overwritten in Load (intended)
local options = addon.Options;
options.OptionsTables = {};

if addon.IsWrathClassic or addon.IsShadowlandsRetail then
    options.WidthMultiplier = 1;
else
    options.WidthMultiplier = 200 / 170; -- 170 comes from AceConfigDialog-3.0.lua, 200 fits better on the screen in DF
end

options.OptionsTable = {
    name = addon.MetaData.Title,
    type = "group",
    childGroups = "tab",
    args = {}
};

options.Debug = function(parameterName, value)
    diagnostics.Debug(parameterName .. ": " .. tostring(value));
end

local function Open()
    if addon.IsWrathClassic or addon.IsShadowlandsRetail then
        InterfaceAddOnsList_Update(); -- This way the correct category will be shown when calling InterfaceOptionsFrame_OpenToCategory
        InterfaceOptionsFrame_OpenToCategory(addon.MetaData.Title);
        for _, button in next, InterfaceOptionsFrameAddOns.buttons do
            if button.element and button.element.name == addon.MetaData.Title and button.element.collapsed then
                OptionsListButtonToggle_OnClick(button.toggle);
                break;
            end
        end
        return;
    end

    Settings.GetCategory(addon.MetaData.Title).expanded = true;
    Settings.OpenToCategory(addon.MetaData.Title, true);
end

local function InjectDefaults(table, tableName, ...)
    local destTable = options.Defaults.profile;
    for i = 1, select("#", ...), 1 do
        destTable = destTable[select(i, ...)];
    end
    destTable[tableName] = table;
end
options.InjectDefaults = InjectDefaults;

local function InjectDefaultsAdd(table, tableName, ...)
    local destTable = options.Defaults.profile;
    for i = 1, select("#", ...), 1 do
        destTable = destTable[select(i, ...)];
    end
    tinsert(destTable[tableName], table);
    return destTable[tableName];
end
options.InjectDefaultsAdd = InjectDefaultsAdd;

local function InjectOptionsTable(table, tableName, ...)
    local destTable = options.OptionsTable.args;
    for i = 1, select("#", ...), 1 do
        destTable = destTable[select(i, ...)];
    end
    destTable[tableName] = table;
end
options.InjectOptionsTable = InjectOptionsTable;

-- Move to API
local function InjectOptionsTableAdd(table, key, tableName, ...)
    local destTable = options.OptionsTable.args;
    for i = 1, select("#", ...), 1 do
        destTable = destTable[select(i, ...)];
    end
    destTable[tableName][key] = table;
end
options.InjectOptionsTableAdd = InjectOptionsTableAdd;

-- local function InjectOptions

-- Load the options
function options.Load()
    addon.Options = LibStub("AceDB-3.0"):New("Options", options.Defaults, true);
    addon.Options.WidthMultiplier = options.WidthMultiplier;
    addon.Options.Open = Open;
    addon.Options.Debug = options.Debug;
    addon.Options.InjectDefaults = InjectDefaults;
    addon.Options.InjectDefaultsAdd = InjectDefaultsAdd;
    addon.Options.InjectOptionsTable = InjectOptionsTable;
    addon.Options.InjectOptionsTableAdd = InjectOptionsTableAdd;
    addon.Options.db = addon.Options.profile;
    addon.Options.OptionsTable = options.OptionsTable; -- Do this for now while working on the rewrite

    for _, optionsTable in next, options.OptionsTables do
        optionsTable.RegisterOptionsTable();
    end

    LibStub("AceConfig-3.0"):RegisterOptionsTable(options.OptionsTable.args.Layout.name, options.OptionsTable.args.Layout);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(options.OptionsTable.args.Layout.name, options.OptionsTable.args.Layout.name, addon.MetaData.Title);

    LibStub("AceConfig-3.0"):RegisterOptionsTable(options.OptionsTable.args.EventReminders.name, options.OptionsTable.args.EventReminders);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(options.OptionsTable.args.EventReminders.name, options.OptionsTable.args.EventReminders.name, addon.MetaData.Title);

    LibStub("AceConfig-3.0"):RegisterOptionsTable(options.OptionsTable.args.Plugins.name, options.OptionsTable.args.Plugins);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(options.OptionsTable.args.Plugins.name, options.OptionsTable.args.Plugins.name, addon.MetaData.Title);

    LibStub("AceConfig-3.0"):RegisterOptionsTable(options.OptionsTable.args.Credits.name, options.OptionsTable.args.Credits);
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(options.OptionsTable.args.Credits.name, options.OptionsTable.args.Credits.name, addon.MetaData.Title);

    -- Extra things to set in the options panel based loaded options we can't do while loading the addon files
    if addon.Options.db.Calendar.FirstWeekDay < 1 or addon.Options.db.Calendar.FirstWeekDay > 7 then
        if not IsAddOnLoaded("Blizzard_Calendar") then -- This is to make sure we get the 1st day of the week correct
            LoadAddOn("Blizzard_Calendar"); -- breaks Blizzard_Calendar
        end
        addon.Options.db.Calendar.FirstWeekDay = CALENDAR_FIRST_WEEKDAY;
    end

    for _, optionsTable in next, options.OptionsTables do
        optionsTable.PostLoad();
    end

    diagnostics.Debug("Options loaded");
    -- diagnostics.DebugTable(addon.Options.db, 1);
end

string["AddDefaultValueText"] = function(self, valuePath, values)
    local value = options.Defaults.profile;
    local pathParts = strsplittable(".", valuePath);
    for _, part in next, pathParts do
        part = tonumber(part) and tonumber(part) or part;
        value = value[part];
    end
    if type(value) == "boolean" then
        value = value and addon.L["Checked"] or addon.L["Unchecked"];
    end
    if values then
        value = values[value];
    end
    return self .. "\n\n" .. addon.L["Default value"] .. ": " .. tostring(value);
end

string["AddReloadRequired"] = function(self)
    return self .. "\n\n" .. addon.L["Requires a reload"];
end