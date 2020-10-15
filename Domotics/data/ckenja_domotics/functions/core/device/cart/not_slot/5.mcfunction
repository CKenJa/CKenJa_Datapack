#異物ドロップ
execute if entity @s[nbt={Items:[{Slot:5b}]}] run function ckenja_domotics:core/device/cart/drop/5
#置き換え
replaceitem entity @s container.5 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_domotics:gui","ckenja_domotics:not_slot"]}} 1