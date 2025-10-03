# punctuation-ahk
借助AutoHotkey v2和Capslock+ 3.3.0生效。

通过“capslock+单个字母”的按键组合来触发脚本，之后按下特定的单个字母，可以打出特定的标点符号。这样可以避免打字时手指频繁移出字母区。

zh-punct.ahk用于打出中文标点，eng-punct.ahk用于打出英文标点。

（1）zh-punct.ahk

通过capslock + M触发“标点模式”。

j 映射 ，

k 映射 。

l 映射 ？

u 映射 ：

i 映射 、

h 映射 ！

n 映射 ；

（2）eng-punct.ahk

通过capslock + U触发“标点模式”

j 映射,

k 映射.

l 映射?

u 映射:

i 映射;

o 映射"

p 映射'

y 映射-

b 映射_

（3）备注

1）capslock + U的按键组合原本被capslock+软件用于选中文本，当eng-punct.ahk处于被激活状态时，这个功能失效。

2）在eng-punct.ahk中，添加规则使字母h映射英文感叹号后，这条规则无法生效，原因未知，因此在脚本中删除字母h。

3）中文输入法状态下，按下capslock + U，会激活eng-punct.ahk。只不过打出来的是中文标点，英文下划线也变成了中文破折号。

4）英文输入法状态下，按下capslock + M，会激活zh-punct.ahk，与中文输入法状态下的脚本表现无异。

5）如果之前卸载过capslock+、AutoHotkey，而且重新安装使用后出现功能异常，那么可能是卸载得不够彻底导致的，可以先卸载，再通过注册表删除残留文件，之后再次安装。
