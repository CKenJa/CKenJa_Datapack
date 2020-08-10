#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function ckenja_smart_devices:device/gui/drop/16
#置き換え
replaceitem block ~ ~ ~ container.16 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1