-- ShaguDPS Localization
ShaguDPS_Locale = {}
local L = ShaguDPS_Locale

-- detect client language
local locale = GetLocale()

-- English defaults
L["Damage"] = "Damage"
L["DPS"] = "DPS"
L["Heal"] = "Heal"
L["HPS"] = "HPS"
L["Current"] = "Current"
L["Overall"] = "Overall"

-- Settings panel
L["Parser"] = "Parser"
L["Window"] = "Window"
L["Track All Nearby Units"] = "Track All Nearby Units"
L["Merge Pets With Owner"] = "Merge Pets With Owner"
L["Bar Texture"] = "Bar Texture"
L["Bar Height"] = "Bar Height"
L["Bar Spacing"] = "Bar Spacing"
L["Pastel Colors"] = "Pastel Colors"
L["Show Backdrops"] = "Show Backdrops"
L["Lock Windows"] = "Lock Windows"

-- Segment & mode tooltips
L["Current Segment"] = "Current Segment"
L["Show current fight"] = "Show current fight"
L["Overall Segment"] = "Overall Segment"
L["Show all fights"] = "Show all fights"
L["Damage View"] = "Damage View"
L["Show Damage Done"] = "Show Damage Done"
L["DPS View"] = "DPS View"
L["Show Damage Per Second"] = "Show Damage Per Second"
L["Heal View"] = "Heal View"
L["Show Healing Done"] = "Show Healing Done"
L["HPS View"] = "HPS View"
L["Show Heal Per Second"] = "Show Heal Per Second"
L["Damage Taken"] = "Damage Taken"
L["DTPS"] = "DTPS"
L["DT View"] = "DT View"
L["DTPS View"] = "DTPS View"
L["Show Damage Taken"] = "Show Damage Taken"
L["Show Damage Taken Per Second"] = "Show Damage Taken Per Second"
L["Auto Hit"] = "Auto Hit"
L["Reflect"] = "Reflect"
L["Select Segment"] = "Select Segment"
L["Select Mode"] = "Select Mode"

-- Bar tooltips
L["Damage Per Second"] = "Damage Per Second"
L["Healing"] = "Healing"
L["Overheal"] = "Overheal"
L["Healing Per Second"] = "Healing Per Second"
L["Overheal Per Second"] = "Overheal Per Second"
L["Details:"] = "Details:"

-- Action button tooltips
L["Send to Chat"] = "Send to Chat"
L["Click"] = "Click"
L["Shift-Click"] = "Shift-Click"
L["Ask to announce all data."] = "Ask to anounce all data."
L["Announce all data."] = "Announce all data."
L["Settings"] = "Settings"
L["Show Configuration Window"] = "Show Configuration Window"
L["Reset Data"] = "Reset Data"
L["Ask to reset all data."] = "Ask to reset all data."
L["Reset all data."] = "Reset all data."
L["New Window"] = "New Window"
L["Create a new window"] = "Create a new window"
L["Remove Window"] = "Remove Window"
L["Delete this window"] = "Delete this window"

-- Dialogs
L["Do you wish to reset the data?"] = "Do you wish to reset the data?"
L["Post %s data into %s?"] = "Post %s data into %s?"

-- Slash command help
L["Show main window"] = "Show main window"
L["Bar height"] = "Bar height"
L["Bar spacing"] = "Bar spacing"
L["Track all nearby units"] = "Track all nearby units"
L["Merge pets into owner data"] = "Merge pets into owner data"
L["Set the statusbar texture"] = "Set the statusbar texture"
L["Use pastel colors"] = "Use pastel colors"
L["Show window backdrop and border"] = "Show window backdrop and border"
L["Lock window"] = "Lock window"
L["Toggle window"] = "Toggle window"
L["Valid Options are"] = "Valid Options are"

-- Slash command response labels
L["Visible"] = "Visible"
L["Lock"] = "Lock"
L["Track all units"] = "Track all units"
L["Merge pet"] = "Merge pet"
L["Texture"] = "Texture"
L["Show window backdrop"] = "Show window backdrop"

-- Chinese localization
if locale == "zhCN" or locale == "zhTW" then
  L["Damage"] = "伤害"
  L["DPS"] = "DPS"
  L["Heal"] = "治疗"
  L["HPS"] = "HPS"
  L["Current"] = "当前"
  L["Overall"] = "总计"

  -- Settings panel
  L["Parser"] = "解析器"
  L["Window"] = "窗口"
  L["Track All Nearby Units"] = "追踪所有附近单位"
  L["Merge Pets With Owner"] = "合并宠物与主人数据"
  L["Bar Texture"] = "条形材质"
  L["Bar Height"] = "条形高度"
  L["Bar Spacing"] = "条形间距"
  L["Pastel Colors"] = "柔和配色"
  L["Show Backdrops"] = "显示背景"
  L["Lock Windows"] = "锁定窗口"

  -- Segment & mode tooltips
  L["Current Segment"] = "当前片段"
  L["Show current fight"] = "显示当前战斗"
  L["Overall Segment"] = "总计片段"
  L["Show all fights"] = "显示所有战斗"
  L["Damage View"] = "伤害视图"
  L["Show Damage Done"] = "显示造成的伤害"
  L["DPS View"] = "DPS视图"
  L["Show Damage Per Second"] = "显示每秒伤害"
  L["Heal View"] = "治疗视图"
  L["Show Healing Done"] = "显示治疗量"
  L["HPS View"] = "HPS视图"
  L["Show Heal Per Second"] = "显示每秒治疗"
  L["Damage Taken"] = "受到伤害"
  L["DTPS"] = "DTPS"
  L["DT View"] = "受伤视图"
  L["DTPS View"] = "DTPS视图"
  L["Show Damage Taken"] = "显示受到的伤害"
  L["Show Damage Taken Per Second"] = "显示每秒受到的伤害"
  L["Auto Hit"] = "自动攻击"
  L["Reflect"] = "反射"
  L["Select Segment"] = "选择片段"
  L["Select Mode"] = "选择模式"

  -- Bar tooltips
  L["Damage Per Second"] = "每秒伤害"
  L["Healing"] = "治疗量"
  L["Overheal"] = "过量治疗"
  L["Healing Per Second"] = "每秒治疗"
  L["Overheal Per Second"] = "每秒过量治疗"
  L["Details:"] = "详细信息:"

  -- Action button tooltips
  L["Send to Chat"] = "发送到聊天"
  L["Click"] = "点击"
  L["Shift-Click"] = "Shift-点击"
  L["Ask to announce all data."] = "确认后公布数据"
  L["Announce all data."] = "直接公布数据"
  L["Settings"] = "设置"
  L["Show Configuration Window"] = "打开设置窗口"
  L["Reset Data"] = "重置数据"
  L["Ask to reset all data."] = "确认后重置数据"
  L["Reset all data."] = "直接重置数据"
  L["New Window"] = "新建窗口"
  L["Create a new window"] = "创建新窗口"
  L["Remove Window"] = "移除窗口"
  L["Delete this window"] = "删除此窗口"

  -- Dialogs
  L["Do you wish to reset the data?"] = "确定要重置数据吗？"
  L["Post %s data into %s?"] = "将 %s 数据发送到 %s？"

  -- Slash command help
  L["Show main window"] = "显示主窗口"
  L["Bar height"] = "条形高度"
  L["Bar spacing"] = "条形间距"
  L["Track all nearby units"] = "追踪所有附近单位"
  L["Merge pets into owner data"] = "合并宠物数据至主人"
  L["Set the statusbar texture"] = "设置状态条材质"
  L["Use pastel colors"] = "使用柔和配色"
  L["Show window backdrop and border"] = "显示窗口背景和边框"
  L["Lock window"] = "锁定窗口"
  L["Toggle window"] = "切换窗口显示"
  L["Valid Options are"] = "有效选项为"

  -- Slash command response labels
  L["Visible"] = "可见"
  L["Lock"] = "锁定"
  L["Track all units"] = "追踪所有单位"
  L["Merge pet"] = "合并宠物"
  L["Texture"] = "材质"
  L["Show window backdrop"] = "显示窗口背景"
end
