tag @s remove ckenja_diluc_having
scoreboard players operation #tmp ckj02_data = @s ckj02_id
execute as @e[type=armor_stand,tag=ckenja_diluc_sword] if score #tmp ckj02_data = @s ckenja_diluc run kill @s
execute as @e[type=area_effect_cloud,tag=ckenja_diluc_aec] if score #tmp ckj02_data = @s ckenja_diluc run kill @s