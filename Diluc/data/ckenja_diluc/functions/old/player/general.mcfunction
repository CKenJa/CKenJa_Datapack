#剣とAEC召喚
execute unless entity @s[tag=ckenja_diluc_having] run function ckenja_diluc:player/set
#エンティティ
scoreboard players operation #tmp ckj02_data = @s ckj02_id
#execute as @e[type=armor_stand,tag=ckenja_diluc_sword] if score #tmp ckj02_data = @s ckenja_diluc run function ckenja_diluc:sword/general
#クリック検知
execute if score @s ckenja_diluc matches 1.. run function ckenja_diluc:player/click
#プレイヤーの移動速度を下げる
replaceitem entity @s weapon.mainhand crossbow{HideFlags:34,Unbreakable:1b,ctc:{id:"ckenja_diluc",from:"ckenja_diluc"},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-1,Operation:2,UUID:[I;1539184682,-394834628,-1217517314,1243713895],Slot:"mainhand"}],ChargedProjectiles:[{},{id:"minecraft:air",Count:1b},{}],Charged:1b} 1
