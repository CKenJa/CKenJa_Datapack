#ID登録して未登録タグを外す
scoreboard players operation @s ckenja_left = # ckenja_left
tag @s remove ckenja_left_unregistered
#仕事中タグ付けて殺されないようにしてからテレポート
tag @s add ckenja_left_working
teleport @s ~ ~-1 ~