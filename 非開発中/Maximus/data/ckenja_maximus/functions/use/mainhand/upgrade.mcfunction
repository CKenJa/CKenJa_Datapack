clear @s iron_horse_armor 1
clear @s golden_horse_armor 1
clear @s diamond_horse_armor 1
clear @s enchanted_golden_apple 1
replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Enchanted Golden apple on a Horse flute","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Its timbre and fruits enchantment the horse"}']},HideFlags:5,Unbreakable:1b,CustomModelData:12016000,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
execute at @s anchored eyes run particle totem_of_undying ^ ^ ^1 1 1 1 0.25 8 normal
playsound block.note_block.flute player @a ~ ~ ~ 6 0