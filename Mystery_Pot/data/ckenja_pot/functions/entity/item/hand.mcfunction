#食べられない(?)アイテムはドロップする
execute unless predicate ckenja_pot:isfood run function ckenja_pot:entity/drop/hand

#OhMyDatのckenja_pos.Item.tag.display.Loreリストにアイテム名翻訳キー
execute in ckj02:void run function ckenja_pot:entity/item/translate

#エフェクトをckenja_pos.Effectsの中に入れる。後でAECに代入して使う。
execute if predicate ckenja_pot:kelp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item.Effects append value {Id:13,Amplifier:0b,Duration:12000,ShowParticles:0b}

#乾燥昆布で強制終了
execute if predicate ckenja_pot:dried_kelp run function ckenja_pot:entity/item/hand/dried_kelp

#一定数入れたら受付終了
scoreboard players remove @s ckenja_pot 1
execute if score @s ckenja_pot matches ..0 run tag @s add ckenja_pot_comp

#ついでにサウンド
execute store result score #tmp ckenja_pot if predicate ckj02:random/0.5 run playsound block.brewing_stand.brew block @a ~ ~ ~ 16 1
execute if score #tmp ckenja_pot matches 0 run playsound entity.generic.splash block @a ~ ~ ~ 16 1

data remove entity @s HandItems[0]