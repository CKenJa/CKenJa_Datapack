#食べられない(?)アイテムはドロップする
execute unless predicate ckenja_pot:entity/item/general run function ckenja_pot:entity/drop/hand

#OhMyDatのckenja_pos.Loreリストにアイテム名翻訳キー
execute in ckj02:void run function ckenja_pot:entity/item/translate

#エフェクトをckenja_pos.Item.tag.Effectsの中に入れる
