#in_root-->early-->standard-->late-->reset_score
function #ckj01:root/in_root
function #ckj01:root/early
function #ckj01:root/standard
function #ckj01:root/late

#プレイヤーとエンティティでも似たようなことする
execute as @e at @s run function ckj01:root/entity

#スコアボードの読み込みはroot/playerで行っている。