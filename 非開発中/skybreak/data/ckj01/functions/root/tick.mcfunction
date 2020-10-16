#in_root-->early-->standard-->late-->reset_score
function #ckj01:root/before_entity/in_root
function #ckj01:root/before_entity/early
function #ckj01:root/before_entity/standard
function #ckj01:root/before_entity/late

#プレイヤーとエンティティでも似たようなことする
execute as @e at @s run function ckj01:root/entity

#スコアボードの読み込みはroot/playerで行っている。

function #ckj01:root/after_entity/in_root
function #ckj01:root/after_entity/early
function #ckj01:root/after_entity/standard
function #ckj01:root/after_entity/late