#実行者 同idでckenja_pig_hook_hookタグ付きのエンティティ
execute store success score #tmp_block ckj03_data run execute if entity @s[tag=ckenja_pig_hook_block_hook]
#エンティティ付きフックなら情報だけ消す
execute if score #tmp_block ckj03_data matches 0 run function ckenja_pig_hook:behavior/unhook/entity
#ブロック付きフックならエンティティごと抹消する
execute if score #tmp_block ckj03_data matches 0 run function ckenja_pig_hook:pig/kill