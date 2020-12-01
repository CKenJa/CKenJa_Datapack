data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation set from storage ckenja_anime: Tmp
#直後の予定データを探す
function ckenja_anime:seek

#時間差計算
#execute store result score #tmp1 ckj02_anime run data get storage ckenja_anime: Tmp[0].Time
scoreboard players operation #tmp1 ckj02_data -= @s ckenja_anime

#予定データと現在データ取得
execute store result score #tmp2 ckj02_anime run data get storage ckenja_anime: Tmp[0].Value 100
execute store result score #tmp3 ckj02_anime run data get entity @s Rotation[0] 100

#一致したらそのまま代入、しなかったら計算して代入
execute unless score #tmp2 ckj02_data = #tmp3 ckj02_data run function ckenja_anime:increase

#正規化
function ckenja_anime:normalize/360

#代入
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #tmp2 ckj02_data

#うるせぇソートとかめんどくせぇ！
#timeデータだけのリストを作る
#愛赤石氏のライブラリでソート
#data modify storage natural_merge_sort: List set from ckenja_anime: sort_tmp
#function natural_merge_sort:ascen
#data get storage natural_merge_sort: List
#tmp1 予定データのtime #tmp2 予定データのvalue #tmp3 現在のvalue