#tmp3以降使用可能。

#複数のバケツがあった場合は統合する。
##Stackの自バケツを別の場所に移す。
##Stackを回して同じデータを持つバケツを探す
##同じデータを持つバケツも自バケツと同じ場所に送る
##バケツを統合する。Slotは最も少ないものになる。
##Stackに戻す。

#アイテム数が64未満の時に64にする。
execute store result score #tmp3 ckj01_data run data get storage ckenja_bit: Stack[0].Count
execute if score #tmp3 ckj01_data < #64 ckj01_data run function ckenja_bit:bucket/restock/general

#制作スロットに入ったバケツは分解する。


#周囲に投げたバケツがあった場合は通常アイテムに変換する。
