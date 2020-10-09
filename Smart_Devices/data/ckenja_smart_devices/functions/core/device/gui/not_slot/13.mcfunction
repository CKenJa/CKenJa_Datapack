#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} run function ckj_smart_devices:core/device/gui/drop/13
#置き換え
replaceitem block ~ ~ ~ container.13 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1