#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function ckenja_smart_devices:core/gui/drop/11
#置き換え
replaceitem block ~ ~ ~ container.11 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1