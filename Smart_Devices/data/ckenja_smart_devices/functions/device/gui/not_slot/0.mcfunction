#異物混入してたらドロップ
execute if block ~ ~ ~ barrel{Items:[{Slot:0b}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["repitem"]}
data modify entity @e[type=item,tag=repitem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:3b}]
#置き換え
replaceitem block ~ ~ ~ container.0 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:empty"]}} 1