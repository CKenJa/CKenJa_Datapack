#視線先・位置は全て馬のローカル座標で実行している
#羽を羽ばたさせる方法は思いつかない。
#数tickごとにckenja_dragon_wingを付け外しする
#付けているときは~ ~5 って感じで少しずつ上に
#逆は~ ~-5 って感じで少しずつ下に
execute rotated as @s positioned ^ ^-0.18 ^ positioned ~ ~-1.69 ~ run tp @s ~ ~ ~ ~ ~0