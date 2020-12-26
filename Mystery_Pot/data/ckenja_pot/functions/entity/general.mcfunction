execute if entity @s[tag=ckenja_pot_initial] run function ckenja_pot:entity/init
#受付中ならアイテムを受け取る
#(ブーツのckenja_pos.nameasリストの中にアイテム名translateJSONを)
#(エフェクトをckenja_pos.Item.tag.Effectsの中に入れる)
#周りの人のUUIDをckenja_pos.UUIDsの中に入れる

#受付終了を検知したら、スープを作る配布して止まる。
execute if entity @s[tag=ckenja_pot_comp]

#アマスタの頭にボウルを装備させて、落ちるエフェクトで充填して、渡す。