#in_root-->early-->standard-->late-->reset_score
function #ckj02:root/before_entity/in_root
function #ckj02:root/before_entity/early
function #ckj02:root/before_entity/standard
function #ckj02:root/before_entity/late

#プレイヤーとエンティティでも似たようなことする
execute as @a run function ckj02:root/player
execute as @e[type=!player] run function ckj02:root/entity

#スコアボードの読み込みはroot/playerで行っている。

function #ckj02:root/after_entity/in_root
function #ckj02:root/after_entity/early
function #ckj02:root/after_entity/standard
function #ckj02:root/after_entity/late