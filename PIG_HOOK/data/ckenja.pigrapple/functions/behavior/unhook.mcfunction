#実行者 同idでckenja.pigrapple_hookタグ付きのエンティティ
execute store success score #tmp_block ckj04.data run execute if entity @s[tag=ckenja.pigrapple_block_hook]
#エンティティ付きフックなら情報だけ消す
execute if score #tmp_block ckj04.data matches 0 run function ckenja.pigrapple:behavior/unhook/entity
#ブロック付きフックならエンティティごと抹消する
execute if score #tmp_block ckj04.data matches 0 run function ckenja.pigrapple:pig/kill