#ckenja_smart_devices/core/device/entity as @s[tag=ckenja_smart_devices_device] at @s
#GUI関係の処理
execute if entity @s[tag=ckenja_smart_devices_gui] run function ckj_smart_devices:core/device/gui/general
#動作
execute if entity @s[tag=ckenja_smart_devices_work] run function #ckj_smart_devices:core/device/work
#エネルギー送受信

#その他