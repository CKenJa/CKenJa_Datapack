tag @s add ckenja_diluc_having
scoreboard players operation #tmp ckj02_data = @s ckj02_id
#剣召喚 ModelDataは仮
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ckenja_diluc_sword","ckenja_diluc_sword_initial"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:126000}}]}
execute as @e[type=armor_stand,distance=..1,tag=ckenja_diluc_sword_initial] run function ckenja_diluc:sword/init

#AECでも似たようなことする
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["ckenja_diluc_aec","ckenja_diluc_aec_initial"]}
execute as @e[type=area_effect_cloud,distance=..1,tag=ckenja_diluc_aec_initial] run function ckenja_diluc:aec/init
say set