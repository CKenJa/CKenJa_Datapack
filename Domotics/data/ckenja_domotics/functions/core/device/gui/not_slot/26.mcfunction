#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:26b}]} run function ckenja_domotics:core/device/gui/drop/26
#置き換え
replaceitem block ~ ~ ~ container.26 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1