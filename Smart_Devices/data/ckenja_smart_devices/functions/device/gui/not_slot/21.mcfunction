#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:21b}]} run function ckenja_smart_devices:device/gui/drop/21
#置き換え
replaceitem block ~ ~ ~ container.21 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1