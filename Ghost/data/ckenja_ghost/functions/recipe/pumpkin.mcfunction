clear @s minecraft:knowledge_book
summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"カボチャキャンディー","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Happy Halloween to the ghosts!"}']},CustomModelData:126001,ckenja:{id:"ckenja_ghost:pumpkin_candy"}}}}
advancement revoke @s only ckenja_ghost:pumpkin
recipe take @s ckenja_ghost:pumpkin