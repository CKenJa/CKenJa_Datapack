#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:17b}]} run function ckj_smart_devices:core/device/gui/drop/17
#置き換え
replaceitem block ~ ~ ~ container.17 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckj_smart_devices:gui","ckj_smart_devices:not_slot"]}} 1