#食べられない(?)アイテムはドロップする
execute unless predicate ckenja_pot:isfood run function ckenja_pot:entity/drop/hand

#OhMyDatのckenja_pos.Item.tag.display.Loreリストにアイテム名翻訳キー
execute in ckj02:void run function ckenja_pot:entity/item/translate

#エフェクトをckenja_pos.Item.tag.Effectsかckenja_pos.Item.tag.ckenja_potの中に入れる
execute if predicate ckenja_pot:isfood run function ckenja_pot:entity/item/hand/kelp


data remove entity @s HandItems[0]