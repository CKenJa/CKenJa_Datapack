tellraw @a[scores={msg_XI=2}] [{"text":" No.11's_SpawnChecker:[\n  モンスターが湧く可能性のある場所を可視化します\n  一部モブやスポナーに対応していません\n ]"}]

#verは最新版のお知らせのみに使う予定の機能なので原則弄っちゃ駄目です。
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["XI_root_ver"],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{ver:0}}]}