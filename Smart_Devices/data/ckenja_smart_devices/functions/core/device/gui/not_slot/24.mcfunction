#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:24b}]} run function ckenja_smart_devices:core/device/gui/drop/24
#置き換え
replaceitem block ~ ~ ~ container.24 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1