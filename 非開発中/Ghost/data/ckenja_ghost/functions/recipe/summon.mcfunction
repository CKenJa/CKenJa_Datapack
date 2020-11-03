clear @s minecraft:knowledge_book
summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"翡翠の喚び飴","color":"green","bold":true,"italic":false}',Lore:['{"text":"Candy to summon the ghost."}']},CustomModelData:126000,ckenja:{id:"ckenja_ghost:summon_candy",Tags:["ckenja_ghost:candy"]}}}}
advancement revoke @s only ckenja_ghost:summon
recipe take @s ckenja_ghost:summon