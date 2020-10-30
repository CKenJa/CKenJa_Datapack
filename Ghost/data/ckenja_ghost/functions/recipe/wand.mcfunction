clear @s minecraft:knowledge_book
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"シレイの杖","color":"aqua","bold":true,"italic":false}'},HideFlags:63,Unbreakable:1b,CustomModelData:126005,ckenja:{id:"ckenja_ghost:wand"},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]}}}
advancement revoke @s only ckenja_ghost:wand
recipe take @s ckenja_ghost:wand