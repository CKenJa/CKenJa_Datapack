data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation set from storage ckenja_anime: Tmp
#直後の予定データを探す
function ckenja_anime:seek
#予定データと現在データの差を時間差で割る
#execute store result score #tmp1 ckj02_anime run data get storage ckenja_anime: Tmp[0].Time
scoreboard players operation #tmp1 ckj02_data -= @s ckenja_anime

execute store result score #tmp3 ckj02_anime run data get storage ckenja_anime: Tmp[0].Value
execute store result score #tmp4 ckj02_anime run data get entity @s Rotation[0]
scoreboard players operation #tmp3 ckj02_data -= #tmp4 ckj02_data
scoreboard players operation #tmp3 ckj02_data /= #tmp1 ckj02_data

#現在のデータと足して代入
scoreboard players operation #tmp3 ckj02_data += #tmp4 ckj02_data
execute if score #tmp3 ckj02_data matches ..-1 run scoreboard players add #tmp3 ckj02_data 360
execute if score #tmp3 ckj02_data matches 360.. run scoreboard players remove #tmp3 ckj02_data 360
execute store result entity @s Rotation[0] float 1 run scoreboard players get #tmp3 ckj02_data

#うるせぇソートとかめんどくせぇ！
#timeデータだけのリストを作る
#愛赤石氏のライブラリでソート
#data modify storage natural_merge_sort: List set from ckenja_anime: sort_tmp
#function natural_merge_sort:ascen
#data get storage natural_merge_sort: List