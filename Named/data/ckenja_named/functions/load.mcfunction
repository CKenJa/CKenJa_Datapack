#ckj01:data/loadより後に実行
scoreboard players set #ckenja_named_denominator ckj01_data 16777216
#最初だけ実行
execute unless score #ckenja_named_version ckj01_data matches -2147483648..2147483647 run scoreboard players set #ckenja_named_version ckj01_data 0
#ver1インストール matches ..(ver)-1
execute unless score #ckenja_named_version ckj01_data matches 1.. run function ckenja_named:install/version1
#ver2以降も同じように追加していく。上のver1は消さなくてもよい。