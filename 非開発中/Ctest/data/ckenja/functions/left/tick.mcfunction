#最初に置くことで他データパックの処理中に0になることを防ぐ
scoreboard players set @a ckenja_left 0
#データパック側でckenja_leftタグをプレイヤーに与えると実行
execute as @a[tag=ckenja_left,scores={ckenja_id=1..}] run function ckenja:left/player
#仕事してないスライムはどんどんしまっちゃおうねー
execute as @e[type=slime,tag=ckenja_left,tag=!ckenja_left_working] run function ckenja:left/kill
#スライム仕事中タグ外し
execute as @e[type=slime,tag=ckenja_left,tag=ckenja_left_working] run tag @s remove ckenja_left_working