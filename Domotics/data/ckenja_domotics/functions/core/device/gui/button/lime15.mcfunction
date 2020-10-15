#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function ckenja_domotics:core/device/gui/drop/15
#置き換え
replaceitem block ~ ~ ~ container.15 lime_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1
#イベント呼び出し
tag @s add ckenja_domotics_button_lime15