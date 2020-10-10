#異物ドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function ckj_smart_devices:core/device/gui/drop/22
#置き換え
replaceitem block ~ ~ ~ container.22 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckj_smart_devices:gui","ckj_smart_devices:not_slot"]}} 1