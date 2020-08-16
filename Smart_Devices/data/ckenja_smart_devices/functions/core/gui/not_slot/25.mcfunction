#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:25b}]} run function ckenja_smart_devices:core/gui/drop/25
#置き換え
replaceitem block ~ ~ ~ container.25 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1