#GUI関係の処理
execute if entity @s[tag=ckenja_smart_devices_gui] run function ckenja_smart_devices:device/gui
#動作
execute if entity @s[tag=ckenja_smart_devices_producer] run function ckenja_smart_devices:device/producer
#エネルギー送受信

#その他
