# このプログラムは最終的にミニマイズされる
# ミニマイズでは、改行、空白の削除が行われる。
# よってこのプログラムは、最終的に一行になる。
#
# ## 制約
# 下記の条件を満たすプログラムを作成する必要がある
# 1. スペースを含む文字列を使わない。スペースそのものではなく文字コードを使ってください
# 2. シングルクォートを使わない。利用したい場合は、文字コード(39)を使ってください
#
# ## 仕様
# このプログラムは`generate_quine`の入力となる。
# いくつかの変数は`generate_quine`により補完されるので、存在しない
# 下記の変数が定義される
# - d: データが格納されている d.unpack("m")[0] でデータを取り出す
# - e: プログラムの文字列が格納されている
# - w: アスキーアートの幅
# - h: アスキーアートの高さ
#
# これらを用いて文字が存在する部分にはプログラム文字(e)を順番に、存在しない部分には空白(32)を出力する
# 改行が必要な場合は10(=\n)を出力する。
#
# ## プログラミングヒント
# 10 = "\n" (改行)
# 32 = " " (空白)
# 39 = "'" (シングルクォート)

n=Marshal.load(d.unpack("m")[0])
o=""
b=""
j=-1
0.upto(w * h-1){|i|
  o<<((n[i]!=1)?e[j+=1]:32)
  o<<(i%w==(w-1)?10:"")

  b<<((n[i]!=1)?59:32)
  b<<(i%w==w-1?10:"")
}

o[-7,6]=""<<39<<".join"
b[-7,6]=""<<39<<".join"
print("\e[2J")
print("\e[H")

b.chars.map{|c|
  print("\e[7m#{c}\e[0m")
  sleep(0.0005)
}
print("\e[1F")
o.lines.reverse.map {|line|
  print("\e[#{w}C")
  line.gsub("\n", "").chars.reverse.map{|c|
    print("\e[1D")
    print(c)
    print("\e[1D")
    sleep(0.0005)
  }
  print("\e[1F")
}
print("\e[#{h}S")
