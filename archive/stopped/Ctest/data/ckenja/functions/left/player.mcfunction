#処理に使うものの初期化
scoreboard players operation # ckenja_left = @s ckenja_id
scoreboard players set #count ckenja_left 0
#Motion値を取り出す
execute store result score #motion_x ckenja_left run data get entity @s Motion[0] 0.05
execute store result score #motion_y ckenja_left run data get entity @s Motion[1] 0.05
execute store result score #motion_z ckenja_left run data get entity @s Motion[2] 0.05
#同じIDのスライムを探して処理する
execute at @s as @e[type=slime,tag=ckenja_left] run execute if score @s ckenja_left = # ckenja_left run function ckenja:left/slime
#右クリ判定
execute if entity @e[tag=ckenja_left_damaged] run scoreboard players set @s ckenja_left 1
#スライムがいなかったら召喚
execute at @s if score #count ckenja_left matches 0 run function ckenja:left/summon