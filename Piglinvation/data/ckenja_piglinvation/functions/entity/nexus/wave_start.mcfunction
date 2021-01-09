#waveボススポーン
function ckenja_piglinvation:aec/summon
#遠くのランダムな場所に到達するまでループ
function ckenja_piglinvation:entity/nexus/wave_start2
#モンスター召喚
function #ckenja_piglinvation:wave_start
#モンスター配置
execute at @e[tag=ckenja_piglinvation_aec] run spreadplayers ~ ~ 16 0 false @e[tag=ckenja_piglinvation_monster_initial]
#次のモードへ
tag @s remove ckenja_piglinvation_wave_start
tag @s add ckenja_piglinvation_wave_now
tellraw @a [{"text":"wave "},{"score":{"name":"@s","objective":"ckj_piglininvation"}},{"text":" start"}]
