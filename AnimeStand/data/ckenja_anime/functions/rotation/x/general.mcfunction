data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation set from storage ckenja_anime: Tmp
#直後の予定データを探す
function ckenja_anime:common/seek

#deactiveやendでないなら処理する。
execute unless data storage ckenja_anime: Tmp[0].deactive unless data storage ckenja_anime: Tmp[0].end run function ckenja_anime:rotation/x/processing


#うるせぇソートとかめんどくせぇ！
#timeデータだけのリストを作る
#愛赤石氏のライブラリでソート
#data modify storage natural_merge_sort: List set from ckenja_anime: sort_tmp
#function natural_merge_sort:ascen
#data get storage natural_merge_sort: List
#tmp1 予定データのtime #tmp2 予定データのvalue #tmp3 現在のvalue