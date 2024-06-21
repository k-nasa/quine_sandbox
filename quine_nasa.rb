eval$s=%w'
d="BAhsK0b/AwAPwB+AH8w/wH+A/4D/+PHAw4GDgYfzwIEDBwcAB+4ABwAODgAA3AEOABwcAAC4AxzAP/AAgH8HOPB/wA/g/w5w8OEAfuDDHeDwwAHg4YE7wOGAA4DDAXeAwwEHAIYD7gCHAw8ADgfeAQ4PHxwcHr4DHPw3+B/4bwc44OPAD8D3"
;n=Marshal.load(d.unpack("m")[0])
;e="eval$s=%w"<<39<<($s*3)
;o=""
;j=-1
;0.upto(65*16-1){|i|
  ;o<<((n[i]==1)?e[j+=1]:32)
  ;o<<((i%65==64)?10:"")
;}
;o[-7,6]=""<<39<<".join"
;puts(o)#
'.join

o<< n[i]==1 ? e[j+=1] : 32
o<< i%65==64 ? 10 : ""
