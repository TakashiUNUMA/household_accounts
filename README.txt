#
# household_accounts
#
# original file coded by Takashi Unuma
# Last modified: 2014/01/07
#

家計簿を付けるための簡易プログラムです。
YYYYMM.txt という名前で月毎の収支を計算します。
フォーマットは、以下の通りです。

format from here --->
# 201401
# Last modified: 2014/01/07
yyyy/mm/dd pay(yen) details
2014/01/05     -250 電車賃
・・・
end of format    <---

始めの3行はヘッダー部分です。
1行目に年月、
2行目に更新日時、
そして3行目にフォーマットの書式を書いておきます。

月毎の収支を計算するときは、calculate.sh を使用します。
使用方法は、以下の通りです。

$ sh calculate.sh 201401.txt

出力結果は以下になります。

# 201401
# Last modified: 2014/01/07
yyyy/mm/dd pay(yen) details
2014/01/05     -250 電車賃
2014/01/05     -876 雑費
2014/01/05    -1995 美容
2014/01/05    -1225 食費
2014/01/06     -147 食費
---------------------------
Total:        -4493


質問・コメントは kijima.m.u at gmail.com にお寄せ下さい。

#
# end of file
#
