#ckenja_domotics/core/device/entity as @s[tag=ckenja_domotics_device] at @s
#GUI関係の処理
execute if entity @s[tag=ckenja_domotics_gui] run function ckenja_domotics:core/device/gui
#動作
execute if entity @s[tag=ckenja_domotics_work] run function ckenja_domotics:core/device/work/general
#エネルギー送受信

#その他