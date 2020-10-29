clear @s minecraft:knowledge_book
summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"ブラックキャンディー","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Sweet, sweet, dark chocolate!"}']},CustomModelData:126001,ckenja:{id:"ckenja_ghost:black_candy",Tags:["ckenja_ghost:candy"]}}}}
advancement revoke @s only ckenja_ghost:black
recipe take @s ckenja_ghost:black