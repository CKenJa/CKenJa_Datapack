#異物ドロップ
execute if entity @s[nbt={Items:[{Slot:7b}]}] run function ckenja_domotics:core/device/cart/drop/7
#置き換え
replaceitem entity @s container.7 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1