#アイテム装備時のインベントリ操作
#・装備スロット（メインハンド、オフハンド、防具、アクセサリー）にアイテムが入ってきたらそのスロットに対応した装備品かどうかカスタムタグを調べる。

#・対応しているならアイテムのカスタムタグ内の要求レベルのデータとプレイヤーのレベル（仮のスコアで良い）を比べる。
#・プレイヤーのレベルが要求レベルに達していない場合やそもそも装備品でなかった場合、装備アイテムをドロップする。
#・アクセサリースロット（inventory9~13）に装備可能アイテムがない場合、空のアイテム（板ガラスとかで良い）で埋めておく。
#2020/08/29 フリータスクより