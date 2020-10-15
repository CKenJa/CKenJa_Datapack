#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:10b}]} run function ckenja_domotics:core/device/gui/drop/10
#置き換え
replaceitem block ~ ~ ~ container.10 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1