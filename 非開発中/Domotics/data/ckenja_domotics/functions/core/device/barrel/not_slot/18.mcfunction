#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:18b}]} run function ckenja_domotics:core/device/barrel/drop/18
#置き換え
replaceitem block ~ ~ ~ container.18 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1