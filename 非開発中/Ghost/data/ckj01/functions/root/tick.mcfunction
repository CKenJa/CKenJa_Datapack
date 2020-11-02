#in_root-->early-->standard-->late-->reset_score
function #ckj01:root/before_entity/in_root
function #ckj01:root/before_entity/early
function #ckj01:root/before_entity/standard
function #ckj01:root/before_entity/late

#プレイヤーとエンティティでも似たようなことする
execute as @a run function ckj01:root/player
execute as @e[type=!player] run function ckj01:root/entity

#スコアボードの読み込みはroot/playerで行っている。

function #ckj01:root/after_entity/in_root
function #ckj01:root/after_entity/early
function #ckj01:root/after_entity/standard
function #ckj01:root/after_entity/late