#パーリンノイズの値は0~10000
#半分超えたら上からちょっとずつぶっ壊したい
#建物の上に波があって重なったら壊れるみたいな?
#建物の高さを100%としたら、パーリンノイズの範囲は50%～150%とかでどうですか。

#パーリンノイズ取得
#関数仕様: 引数#v_1 #v_2 座標3000倍して入れとけ
#戻り値#v_1 0~10000

#建物の高さを取得tmp_end
scoreboard players operation #tmp_start ckenja_ruin = #start_y ckenja_ruin
scoreboard players operation #tmp_end ckenja_ruin = #end_y ckenja_ruin
scoreboard players operation #tmp_end ckenja_ruin -= #tmp_start ckenja_ruin

#(p/10000+0.5)*y

#
