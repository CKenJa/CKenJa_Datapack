scoreboard players set #have ckenja_maximus 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Lore:['{"text":"Its timbre and fruits enchantment the horse"}']}}}}] run scoreboard players set #have ckenja_maximus 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{display:{Lore:['{"text":"Its timbre and fruits enchantment the horse"}']}}}]}] run scoreboard players set #have ckenja_maximus 1
execute if score #have ckenja_maximus matches 1 run function ckenja_maximus:sneak/have