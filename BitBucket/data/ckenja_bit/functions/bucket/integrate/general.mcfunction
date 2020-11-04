##Stackの自バケツを別の場所に移す。
##Stackを回して同じデータを持つバケツを探す
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Stack[0].Slot
execute unless score #tmp3 ckj01_data = #tmp4 ckj01_data run function ckenja_bit:bucket/integrate/general
##同じデータを持つバケツも自バケツと同じ場所に送る
##バケツを統合する。Slotは最も少ないものになる。
##Stackに戻す。
