// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// 填入第一個值
0.   @2     // 第一個值
1.   D=A    // 值放入D
2.   @0     
3.   M=D    // 把 D 填入 M 0

4.   @4     // 第二個值
5.   D=A    // 值放入D
6.   @1
7.   M=D    // 把 D 填入 M 1
8.   @11    // 把值放到 M 12裡面(@12是跳回的地方(D=D+M)，順便做判斷)
9.   M=D    // 這個當作過渡變數，遞減判斷迴圈

10.  D=0
11.  @0    
12.  D=D+M  // 把數字相加多次變成乘
13.  @11
14.  M=M-1  // 判定加的次數(第二個值)
15.  M;JNE  // 如果 M == 0 跳出迴圈

16.  @2     // 第三個數
17.  M=D    // 把最後相乘的數放到 M 2

// 卡迴圈
18.  @18
19.  0;JMP