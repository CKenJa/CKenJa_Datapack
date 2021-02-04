execute if score @s ckenja_test matches 1..1200 run title @s times 0 100 0

execute if score @s ckenja_test matches 1 run title @s title "聖夜のパーティー鍋"
execute if score @s ckenja_test matches 1 run title @s subtitle "1分レシピ動画"
execute if score @s ckenja_test matches 1 run function 3minitue_cooking:play

execute if score @s ckenja_test matches 100 run title @s title "ケーキを適量クラフトする"
execute if score @s ckenja_test matches 100 run title @s subtitle "パーティーに欠かせない"

execute if score @s ckenja_test matches 200 run title @s title "ケーキを適量クラフトする"
execute if score @s ckenja_test matches 200 run title @s subtitle "パーティーに欠かせない"

execute if score @s ckenja_test matches 300 run title @s title "？？？肉 5kg"
execute if score @s ckenja_test matches 300 run title @s subtitle "ちょっと風味が強い"

execute if score @s ckenja_test matches 400 run title @s title "骨 1個"
execute if score @s ckenja_test matches 400 run title @s subtitle "豚骨スープってあるじゃん?"

execute if score @s ckenja_test matches 500 run title @s title "謎の灰色の粉 300cc"
execute if score @s ckenja_test matches 500 run title @s subtitle "多幸感を味わえる必須調味料"

execute if score @s ckenja_test matches 600 run title @s title "水 1L"
execute if score @s ckenja_test matches 600 run title @s subtitle "火を通せば大丈夫"

execute if score @s ckenja_test matches 700 run title @s title "だし昆布 1枚"
execute if score @s ckenja_test matches 700 run title @s subtitle "鍋と言えば"

execute if score @s ckenja_test matches 800 run title @s title "具材を入れていく"
execute if score @s ckenja_test matches 800 run title @s subtitle ""

execute if score @s ckenja_test matches 900 run title @s title "具材を入れていく"
execute if score @s ckenja_test matches 900 run title @s subtitle ""

execute if score @s ckenja_test matches 1000 run title @s title "盛り付け"
execute if score @s ckenja_test matches 1000 run title @s subtitle ""

execute if score @s ckenja_test matches 1100 run title @s title "完成!"
execute if score @s ckenja_test matches 1100 run title @s subtitle ""

scoreboard players add @s ckenja_test 1
