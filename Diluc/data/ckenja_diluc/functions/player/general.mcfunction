#剣とAEC召喚
execute unless entity @s[tag=ckenja_diluc_having] run function ckenja_diluc:player/set
#エンティティ
scoreboard players operation #tmp ckj02_data = @s ckj02_id
#execute as @e[type=armor_stand,tag=ckenja_diluc_sword] if score #tmp ckj02_data = @s ckenja_diluc run function ckenja_diluc:sword/general
#クリック検知
execute if score @s ckj02_coas matches 1.. run function ckenja_diluc:player/click
#プレイヤーの移動速度を下げる