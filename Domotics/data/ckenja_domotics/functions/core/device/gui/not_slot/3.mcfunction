#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:3b}]} run function ckenja_domotics:core/device/gui/drop/3
#置き換え
replaceitem block ~ ~ ~ container.3 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1