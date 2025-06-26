[手把手教你拆解 CSAPP 的 炸弹实验室 BombLab](https://www.zhihu.com/search?type=content&q=bomblab)
(https://web.cecs.pdx.edu/~apt/cs510comp/gdb.pdf)

运行
gdb bomb 使用 gdb 调试可执行文件 bomb √
r run，运行程序，遇到断点处停止，等待用户输入下一步指令 √
c continue，继续执行，到下一个断点(或程序结束) √
q quit, 退出 gdb 调试 √
si 单指令执行，即每次只执行一条指令，结合"交互模式下直接回车的作用是重复上一指令，对于单步调试非常方便" √
n next，单步跟踪程序，遇到函数调用时，不会进入函数体内部
s step，单步调试，遇到函数调用时，会进入函数体内部
until 当你厌倦了在一个循环体内部单步跟踪时，这个命令可以运行程序直到退出循环体
until + 行号 运行至行号处

设置断点
b n break n，在第 n 行设置断点 √
b func 在函数 func() 的入口处设置断点 √
b *地址值 在地址值处设置断点，例如，b *0x401460 √
i b info b, 显示当前程序的断点设置情况，会给出各个断点的序号，类型等信息 √
delete 断点号n 删除第 n 个断点(从 info b 中得出断点序号) √
disable 断点号n 暂停第 n 个断点
enable 断点号n 开启第 n 个断点
delete breakpoints 删除所有断点

分割窗口
layout regs 显示寄存器和反汇编窗口 √
layout asm 显示反汇编窗口 √

objdump -t

objdump -d

strings

显示内容
x/[count][format] [address] 打印内存值，从所给地址(address)处开始，以指定格式(format)显示 count 个值，例如 x/100i foo 反汇编并打印出从 foo 处开始的 100 条指令 √
常见 format 有 d decimal, x hex, t binary, f floating point, i instruction, c character, s string(以 8bit 字符串形式显示数据)
i r 寄存器名 , info registers 寄存器名，查看当前某个寄存器的内容，寄存器名前不需要 % ，例如，i r rsi √
Ctrl + L 清屏，由于 gdb 没有专门的清屏命令，所以用 Linux 自带的。(有的时候不退出 gdb 重新 r 会导致显示内容覆盖，使用这个命令清屏，有可能不好使) √

```
echo 'set history save on' >> ~/.gdbinit && chmod 600 ~/.gdbinit
gdb bomb
b explode_bomb
b phase_1
r

layout asm
b strings_not_equal
b string_length
x/s 0x402400
    # view bomb.asm line 348


b explode_bomb
b phase_2
r

b read_six_numbers
layout asm
x/s 0x4025c3
    # view bomb.asm line 814

b phase_2
layout asm
    # view line 367, add    %eax,%eax

    
b explode_bomb
b phase_3
layout asm
x/s 0x4025cf
    # view line 387
x/16x 0x402470
    # view line 396, jump to 0x402470+8*%rax

b phase_4
layout asm
x/s 0x4025cf
b func_4

b phase_5

    # ascii-a 01100001





```