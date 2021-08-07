scoreboard players operation #tmp_id ckj04.data = @s ckj04.id
replaceitem entity @a weapon.mainhand crossbow{Charged:1b,HideFlags:63,ChargedProjectiles:[{id:"minecraft:air",Count:1b}]} 1
advancement revoke @s only ckenja.pigrapple:shot_crossbow
execute unless entity @e[tag=ckenja.pigrapple_hook,distance=..384] run function ckenja.pigrapple:tmp/summon
execute rotated as @s as @e[tag=ckenja.pigrapple_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj04.data run function ckenja.pigrapple:tmp/tp
replaceitem entity @a weapon.mainhand crossbow{Charged:1b,HideFlags:63,ChargedProjectiles:[{id:"minecraft:air",Count:1b}]} 1
