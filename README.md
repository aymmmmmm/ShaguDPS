# ShaguDPS (Modified)

基于 [shagu/ShaguDPS](https://github.com/shagu/ShaguDPS) v3.0.1 的修改版本，新增了受到伤害追踪、色彩饱和度调节和完整的中文界面。

![截图](screenshot.jpg)

## 安装

1. 下载并解压
2. 将 `ShaguDPS` 文件夹复制到 `游戏目录\Interface\AddOns\`
3. 重启游戏（或在角色选择界面点击"插件"确认已启用）

> 如果你使用 TBC (2.4.3) 客户端，需要将文件夹重命名为 `ShaguDPS-tbc`。

## 基本使用

### 窗口操作

| 操作 | 说明 |
|------|------|
| **拖拽标题栏** | 移动窗口位置 |
| **拖拽右下角** | 调整窗口大小 |
| **鼠标悬停在条形上** | 查看该玩家的详细技能分布 |

### 标题栏按钮（从左到右）

| 按钮 | 功能 |
|------|------|
| 📢 喇叭 | 将当前数据发送到聊天频道（点击会弹出确认，Shift+点击直接发送） |
| ⚙️ 齿轮 | 打开设置面板 |
| 🔄 重置 | 清空所有统计数据（点击会弹出确认，Shift+点击直接重置） |
| ➕ 加号 | 新建一个独立的统计窗口 |
| ➖ 减号 | 删除当前窗口 |

### 切换显示模式

标题栏下方有两排按钮，用于切换**数据片段**和**视图模式**：

**片段切换**（左侧）：
- **当前** — 只显示当前这场战斗的数据
- **总计** — 显示所有战斗的累计数据

**视图切换**（右侧）：
- **Damage** — 造成的伤害总量
- **DPS** — 每秒伤害输出
- **Heal** — 有效治疗量
- **HPS** — 每秒治疗量
- **DT** — 受到的伤害总量 *(新增)*
- **DTPS** — 每秒受到的伤害 *(新增)*

> 每个窗口可以独立设置不同的片段和视图，比如一个窗口看 DPS，另一个窗口看受到伤害。

## 新增功能

### 受到伤害追踪

除了原版的 Damage / DPS / Heal / HPS 四种视图，新增了 **DT**（受到伤害）和 **DTPS**（每秒受到伤害）两种视图：

- 可以直观看到队伍中谁承受了最多伤害
- 鼠标悬停可查看各技能来源的伤害分布
- 宠物受到的伤害也会合并到主人名下（如果开启了"合并宠物"选项）

### 色彩饱和度调节

在设置面板中新增了**色彩饱和度**滑块（范围 1~20，默认 10）：
- 数值越高，职业颜色越鲜艳
- 数值越低，颜色越柔和
- 到达边界值时，左右箭头会变半透明提示已到极限

### 中文界面

插件会自动检测游戏客户端语言。如果你的客户端是简体中文或繁体中文，所有界面文字会自动切换为中文，包括：
- 设置面板中的所有选项
- 鼠标悬停的提示信息
- 聊天命令的帮助文本
- 确认弹窗

英文客户端则保持英文界面，无需手动切换。

### Bug 修复

- 修复了战斗中出现伤害反射（如荆棘术、烈焰护盾等）时插件报错崩溃的问题

## 设置面板

点击窗口标题栏的齿轮按钮打开设置，可调整：

| 选项 | 说明 | 默认值 |
|------|------|--------|
| 追踪所有附近单位 | 记录附近所有人的数据（不只队伍成员） | 关 |
| 合并宠物与主人数据 | 宠物的伤害/治疗/受伤归入主人 | 开 |
| 条形材质 | 状态条的视觉样式（4种可选） | 2 |
| 条形高度 | 每个条形的像素高度 | 15 |
| 条形间距 | 条形之间的间距 | 0 |
| 柔和配色 | 使用低饱和度的柔和色调 | 关 |
| 色彩饱和度 | 职业颜色的鲜艳程度（1~20） | 10 |
| 显示背景 | 窗口是否显示背景和边框 | 开 |
| 锁定窗口 | 锁定后无法拖拽移动窗口 | 关 |

## 聊天命令

以下三个命令等效：`/shagudps`、`/sdps`、`/sd`

直接输入命令（不带参数）会显示所有选项及当前值。

```
/sdps visible 1        显示/隐藏主窗口 (0 或 1)
/sdps toggle           切换窗口显示
/sdps lock 0           锁定/解锁窗口 (0 或 1)
/sdps height 15        条形高度 (任意数字)
/sdps spacing 0        条形间距 (任意数字)
/sdps trackall 0       追踪所有附近单位 (0 或 1)
/sdps mergepet 1       合并宠物数据至主人 (0 或 1)
/sdps texture 2        条形材质 (1 到 4)
/sdps pastel 0         柔和配色 (0 或 1)
/sdps saturation 10    色彩饱和度 (1 到 20)
/sdps backdrop 1       显示窗口背景和边框 (0 或 1)
```

## 扩大战斗日志范围

ShaguDPS 依赖游戏的战斗日志来统计数据，**不具备团队同步功能**。游戏默认的战斗日志范围是 40 码，在大型团本中可能不够用。

如需扩大到 200 码，在游戏中输入以下命令：

```
/run for _,n in pairs({"Party", "PartyPet", "FriendlyPlayers", "FriendlyPlayersPets", "HostilePlayers", "HostilePlayersPets", "Creature" }) do SetCVar("CombatLogRange"..n, 200) end
```

或者在 `WTF/Config.wtf` 中手动添加：

```
SET CombatLogRangeParty "200"
SET CombatLogRangePartyPet "200"
SET CombatLogRangeFriendlyPlayers "200"
SET CombatLogRangeFriendlyPlayersPets "200"
SET CombatLogRangeHostilePlayers "200"
SET CombatLogRangeHostilePlayersPets "200"
SET CombatLogRangeCreature "200"
```

> ⚠️ 注意：部分单位框架插件（如 pfUI）依赖 40 码的战斗日志范围来检测距离，扩大范围可能影响这些插件的距离判断功能。

## 致谢

- **原作者**: [Shagu](https://github.com/shagu) — [ShaguDPS](https://github.com/shagu/ShaguDPS) 原版开发者
- **修改者**: [anym](https://github.com/aymmmmmm) — 受到伤害追踪、色彩饱和度、中文本地化
- **测试者**: [Marcoatbath](https://armory.turtle-wow.org/#!/character/Marcoatbath)
