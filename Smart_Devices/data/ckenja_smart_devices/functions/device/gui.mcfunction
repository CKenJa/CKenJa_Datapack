#GUI構成ごとに別関数、異物を外に排出後、常時置き換え
execute if entity @s[tag=ckenja_smart_devices_gui_3dprinter] run function ckenja_smart_devices:gui/3dprinter
#ホッパー使うなカス
execute if block ~ ~-1 ~ hopper{Items:[{tag:{ckenja:{tags:["ckenja_smart_devices:gui"]}}}]} run data remove block ~ ~-1 ~ Items[{tag:{ckenja:{tags:["ckenja_smart_devices:gui"]}}}]
#playerで持ってるアイテムはclear、tickで落ちてるのもkill