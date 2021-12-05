clear @s minecraft:golden_apple 1
clear @s minecraft:note_block 1
replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Golden apple on a Horse flute","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Its timbre and fruits enchantment the horse"}']},CustomModelData:126000} 1
execute at @s anchored eyes run particle crit ^ ^1 ^1 1 1 1 1 12 normal
playsound block.anvil.land master @a ~ ~ ~ 1 2