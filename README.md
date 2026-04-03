# ShaguDPS (Modified)

基于 [shagu/ShaguDPS](https://github.com/shagu/ShaguDPS) v3.0.1 的修改版本。

原版是一个轻量级的伤害统计插件，以无关语言环境的方式解析战斗日志，支持 1.12（经典旧世）和 2.4.3（燃烧的远征）客户端。

## 相比原版的改动

### 受到伤害追踪
- 新增 **Damage Taken**（受到伤害）和 **DTPS**（每秒受到伤害）两个视图模式
- 在模式选择菜单中可直接切换到 DT / DTPS 视图
- Tooltip 显示受到伤害的详细分技能统计
- 支持宠物合并（将宠物受到的伤害归入主人）

### 色彩饱和度
- 新增色彩饱和度滑块设置（范围 1-20，默认 10）
- 数值选择器加入上下限限制，到达边界时箭头变半透明

### 中文本地化
- 新增 `locales.lua`，自动检测客户端语言
- 支持简体中文 (zhCN) 和繁体中文 (zhTW)
- 所有 UI 文本（设置面板、工具提示、斜杠命令帮助、对话框）均已汉化

## 安装 (Vanilla, 1.12)
1. 下载并解压
2. 将 `ShaguDPS` 文件夹复制到 `Wow目录\Interface\AddOns`
3. 重启游戏

## 安装 (The Burning Crusade, 2.4.3)
1. 下载并解压
2. 将文件夹重命名为 `ShaguDPS-tbc`
3. 复制到 `Wow目录\Interface\AddOns`
4. 重启游戏

## 命令

以下斜杠命令均可使用：
* **/shagudps**
* **/sdps**
* **/sd**

可用选项：

```
/sdps visible 1        显示主窗口 (0 或 1)
/sdps height 17        条形高度 (任意数字)
/sdps spacing 0        条形间距 (任意数字)
/sdps trackall 0       追踪所有附近单位 (0 或 1)
/sdps mergepet 1       合并宠物数据至主人 (0 或 1)
/sdps texture 2        设置状态条材质 (1 到 4)
/sdps pastel 0         使用柔和配色 (0 或 1)
/sdps backdrop 1       显示窗口背景和边框 (0 或 1)
/sdps saturation 10    色彩饱和度 (1-20)
/sdps lock 0           锁定窗口 (0 或 1)
/sdps toggle           切换窗口显示
```

## 视图模式

| 模式 | 说明 |
|------|------|
| Damage | 造成的伤害总量 |
| DPS | 每秒伤害 |
| Heal | 治疗量（有效治疗） |
| HPS | 每秒治疗 |
| Damage Taken | 受到的伤害总量 |
| DTPS | 每秒受到的伤害 |

每个窗口可独立切换 **当前战斗 / 总计** 片段和视图模式。

## 战斗日志范围

ShaguDPS 完全依赖战斗日志，不具备团队同步功能。游戏默认战斗日志范围为 40 码。如需扩大到 200 码：

    /run for _,n in pairs({"Party", "PartyPet", "FriendlyPlayers", "FriendlyPlayersPets", "HostilePlayers", "HostilePlayersPets", "Creature" }) do SetCVar("CombatLogRange"..n, 200) end

或在 Config.wtf 中手动设置：

    SET CombatLogRangeParty "200"
    SET CombatLogRangePartyPet "200"
    SET CombatLogRangeFriendlyPlayers "200"
    SET CombatLogRangeFriendlyPlayersPets "200"
    SET CombatLogRangeHostilePlayers "200"
    SET CombatLogRangeHostilePlayersPets "200"
    SET CombatLogRangeCreature "200"

注意：部分单位框架插件依赖战斗日志范围为 40 码，扩大范围可能影响其 40 码距离检测功能。

## 致谢

- **原作者**: [Shagu](https://github.com/shagu) — 原版 [ShaguDPS](https://github.com/shagu/ShaguDPS) 的开发者
- **修改者**: [anym](https://github.com/aymmmmmm) — 受到伤害追踪、中文本地化
- **测试者**: [Marcoatbath](https://armory.turtle-wow.org/#!/character/Marcoatbath)
