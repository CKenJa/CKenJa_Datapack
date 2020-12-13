data modify storage ckenja_anime: Tmp.List set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RotationX
#直後の予定データを探す
function ckenja_anime:common/seek
#deactiveやendでないなら処理する。
execute unless data storage ckenja_anime: Tmp.Compound{deactive:1b} unless data storage ckenja_anime: Tmp.Compound{end:1b} run function ckenja_anime:rotation/x/processing

#うるせぇソートとかめんどくせぇ！
#timeデータだけのリストを作る
#愛赤石氏のライブラリでソート
#data modify storage natural_merge_sort: List set from ckenja_anime: sort_tmp
#function natural_merge_sort:ascen
#data get storage natural_merge_sort: List
#tmp1 予定データのtime $tmp3 予定データのvalue $tmp4 現在のvalue