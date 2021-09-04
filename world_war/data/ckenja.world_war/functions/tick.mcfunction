#> ckenja.world_war:tick
#
#
#
# @within tag/function minecraft:tick

#ヤギを動かして、対応したモブも同期
execute as @e[type=goat,tag=ckenja.world_war.goat] at @s run function ckenja.world_war:goat/

#モブの登録
#execute as @e[type=#ckenja.world_war:all,tag=!ckenja.world_war.mob] run function ckenja.world_war:register/