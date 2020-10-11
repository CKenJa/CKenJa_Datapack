#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function ckenja_smart_devices:core/device/gui/drop/15
#置き換え
replaceitem block ~ ~ ~ container.15 lime_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1
#イベント呼び出し
tag @s add ckenja_smart_devices_button_lime15