#やっぱ線形合同法ってアルゴリズムはサイコーだせぇ！ 自分の世界にのめり込めるって言うか引きこもれるって言うかとってもサイコーな気分だヒャッハー！
#参考:https://algoful.com/Archive/Algorithm/LCG
#線形合同法の最大周期を実現するには
#BとMの最大公約数が1 高精度計算サイトが便利 https://keisan.casio.jp/exec/system/1161228772
#A-1がMの全ての素因数の積の倍数 360の素因数は2,3,5で割り切れる数は30の倍数
#Mが4の倍数の時、A-1も4の倍数
#scoreboard players set #A ckenja_chuman 61
#scoreboard players set #B ckenja_chuman 2
#scoreboard players set #M ckenja_chuman 360
#scoreboard players set #rand ckenja_chuman 8
scoreboard players operation #rand ckenja_chuman *= #A ckenja_chuman
scoreboard players operation #rand ckenja_chuman += #B ckenja_chuman
scoreboard players operation #rand ckenja_chuman %= #M ckenja_chuman
scoreboard players get #rand ckenja_chuman