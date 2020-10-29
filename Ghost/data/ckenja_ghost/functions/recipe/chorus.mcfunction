clear @s minecraft:knowledge_book
summon item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1b,tag:{display:{Name:'{"text":"コーラスキャンディー","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"The Fruits of The End for the Dead."}']},CustomModelData:126002,ckenja:{id:"ckenja_ghost:chorus_candy",Tags:["ckenja_ghost:candy"]}}}}
advancement revoke @s only ckenja_ghost:chorus
recipe take @s ckenja_ghost:chorus