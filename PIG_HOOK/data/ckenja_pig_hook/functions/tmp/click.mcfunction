scoreboard players operation #tmp_id ckj03_data = @s ckj03_id
replaceitem entity @a weapon.mainhand crossbow{Charged:1b,HideFlags:63,ChargedProjectiles:[{id:"minecraft:air",Count:1b}]} 1
advancement revoke @s only ckenja_pig_hook:shot_crossbow
execute unless entity @e[tag=ckenja_pig_hook_hook,distance=..384] run function ckenja_pig_hook:tmp/summon
execute rotated as @s as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:tmp/tp
replaceitem entity @a weapon.mainhand crossbow{Charged:1b,HideFlags:63,ChargedProjectiles:[{id:"minecraft:air",Count:1b}]} 1
