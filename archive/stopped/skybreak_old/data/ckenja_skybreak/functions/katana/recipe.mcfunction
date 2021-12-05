clear @s minecraft:diamond_sword
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"katana","italic":false}'},CustomModelData:126002,ckenja:{tag:["ckenja_skybreak_katana"]}}}}
advancement revoke @s only ckenja_skybreak:recipe/katana
recipe take @s ckenja_skybreak:katana