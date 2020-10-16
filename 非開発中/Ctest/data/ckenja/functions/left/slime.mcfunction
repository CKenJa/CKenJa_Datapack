#カウント
scoreboard players add #count ckenja_left 1
#なんか多いので自害(いらない?)
execute if score #count ckenja_left matches 2.. run function ckenja:left/kill
#処理に使うタグ付け
tag @s add ckenja_left_working
execute if entity @s[nbt={HurtTime:10s}] run tag @s add ckenja_left_damaged
#Motion値からテレポート位置を修正
teleport @s ~ ~-1 ~
execute store result entity @s Motion[0] double 1 run scoreboard players get #motion_x ckenja_left
execute store result entity @s Motion[1] double 1 run scoreboard players get #motion_y ckenja_left
execute store result entity @s Motion[2] double 1 run scoreboard players get #motion_z ckenja_left