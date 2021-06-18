[TOC]

# Java学习

## 第一章 java是什么

Java语言是美国sun公司(Stanford University Network)，在1995年推出的高级编程语言。所谓编程语言，是计算机的语言，人们可以使用编程语言对计算机下达命令，让计算机完成人们需要的功能。

## 第二章 java语言开发环境搭建

### 2.1 java虚拟机 -- JVM

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.51wendang.com%2Fpic%2Fb1d6704dc3141d94fc46524d%2F1-445-png_6_0_0_0_0_0_0_893.25_1263.375-893-0-145-893.jpg&refer=http%3A%2F%2Fwww.51wendang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625973835&t=7bf7e74b701149e94961d93479c393df)

### 2.2 JRE和JDK

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2018.cnblogs.com%2Fblog%2F1157088%2F201903%2F1157088-20190315132909445-1977511372.png&refer=http%3A%2F%2Fimg2018.cnblogs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625973868&t=07479af3b518be626ebd4b214169e132)



### 2.3 JDK的下载与安装

> 下载地址 ： https://www.oracle.com/java/technologies/javase-downloads.html

安装时的建议 ：

1. 安装时路径不要有==中文==和==空格==。

2. 不建议安装公共JRE。


### 2.4 环境变量的配置

   计算机环境变量 --- 全局变量下 ：

1.  新增系统变量  

​		变量名 --  JAVA_HOME

​		变量值 -- D:\Java\jdk-16.0.1

2. 修改path: 添加 %JAVA_HOME%\bin

> 修改完path后，可以在DOS命令任何路径下执行java命令



## 第三章 HelloWorld入门程序

###  3.1 程序开发步骤说明

![image-20210530225804497](E:\Study\Java学习.assets\image-20210530225804497.png)

> 用java写第一个程序"HelloWorld"

```java
// 第一行的第三个单词必须和所在的文件名称完全一样，大小写也要一样
// public class 后面代表定义一个类的方法，类是java当中所有源代码的基本组织单位。
public class HelloWorld {
    public static void main(String[] args) {
        //第二行的内容是万年不变的固定写法，代表main方法
        //这一行代表程序执行的起点
        System.out.println("Hello, World!");
        //第三行代表打印输出语句
    }
}
```

  

### 3.2 关键字的概念和特征

什么是关键字？

1. 完全小写的字母。
2. 在增强版的词本中有特殊颜色。

 

### 3.3 标识符

- **标识符** ： 是指在程序中，我们自定义内容。比如类的名字、方法的名字和变量的名字等等，都是标识符。
  - HelloWorld案例中，出现的标识符有类的名字==HelloWorld==。

- **命名规则** ： **硬性要求**
  - 标识符可以包含英文字母==26个(区分大小写)==、==0-9数字==、==$(美元符号)==和==_(下划线)==。
  - 标识符不能以数字开头。
  - 标识符不能是关键字。
- **命名规范** : **软性建议**
  - 类名规范 ：首字母大写，后面每个单词首字母大写（大驼峰式）。
  - 变量名规范 ： 首字母小写，后面每个单词首字母大写（小驼峰式）。
  - 方法名规范 ： 同变量名。



## 第四章 常量

什么是常量?

 	在程序运行期间，固定不变的量。

常量的分类 :

1. 字符串常量：凡是用双引号引起来的部分，叫做字符串常量。如 ： "abc" , "123"
2. 整数常量：直接写上的数字，没有小数点。 如 : 100 、200、0、-250
3. 浮点数常量：直接写上的数字，有小数点。如： 2.5、-3.14、0.0
4. 字符常量： 凡是用单引号引起来的单个字符，就叫做字符常量。如：'A'、'b'、'9'、'中'
5. 布尔常量： 只有量中取值。true、false
6. 空常量： null。没有任何数据。

 

## 第五章 变量和数据类型

### 5.1 变量。

> 程序运行期间，内容可以发生改变的量。

创建一个变量并且使用的格式 ：

数据类型 变量名称;

变量名称 = 数据值;

```java
int a ;

a = 10;
```

也可以一步到位:

```java
int  a = 10 ;
```



### 5.2 数据类型

#### 数据类型分类

java的数据类型分为两大类：

- 基本数据类型: 包括 ==整数==、==浮点数==、==字符==、==布尔==。
- 引用数据类型: 包括 ==字符串==、==lambda==、==类==、==数组==、==接口==。

#### 基本数据类型

![img](https://iknow-pic.cdn.bcebos.com/37d3d539b6003af3d5ab8435352ac65c1038b656)



注意事项

1. 字符串不是基本类型，而是引用类型。

2. 浮点型可能 只是一个近似值，并非精确的值。

3. 数据范围与字节数不一定相关。例如float数据范围比long更加广泛，但是float是4字节，long是8字节。

4. 浮点数当中默认类型是double。如果一定要使用float类型，需要加上一个后缀F。

   如果是整数，默认为int类型，如果一定要使用long类型，需要加上一个后缀L。推荐使用大写字母后缀。



<<<<<<< HEAD
#### ASCII编码表：

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fs3.51cto.com%2Fwyfs02%2FM01%2F7D%2F5B%2FwKiom1bmjEiA83vuAAH393nmF_A536.jpg&refer=http%3A%2F%2Fs3.51cto.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625887860&t=5caabbe76128a9f9db3f4b7d82dbce3b)

> 需要记住三个码 :  48 - '0' | 65 - 'A' | 97 - 'a'

```java
public class HelloWorld {
    public static void main(String[] args) {
        char zifu1 = '1';
        System.out.println(zifu1 + 0);

        char zifu2 = 'A';
        System.out.println(zifu2);

        char zifu3 = 'c';
        // 左侧是int类型，右侧是char类型，char --> int, 确实是从小到大，可以发生自动转换。
=======
​```java
/*
使用变量的时候，有一些注意事项 ：
1.如果创建多个变量，那么变量之间的名称不可以重复。
2.对于float和long类型来说，字母后缀F和L不要丢掉。
3.如果使用byte或short类型的变量，那么右侧的数值值不能超过左侧类型的范围。
4.变量一定要先赋值，才能够使用。
5.变量使用不能超过作用域
[作用域] ： 从定义变量的一行开始，一直到所属的大括号结束为止。
6.可以通过一个语句来创建多个变量，但是一般不推荐这么写。
*/

public class Demo03VariableNotice {
    public static void main(String[] args) {
        int num1 = 10; // 创建了一个新的变量num1,名叫num1
        // int num1 = 20; // 又创建了一个新的变量num1,名字也叫num1,错误!
        System.out.println(num1);

        int num2 = 20;
        int num3;
        num3 = 30;
        System.out.println(num2);
        System.out.println(num3);

        // int num4; // 定义了一个变量，但是没有进行赋值。
        // System.out.println(num4); // The local variable num4 may not have been
        // initialized

        // System.out.println(num5); //Demo03VariableNotice.java is a non-project file,
        // only syntax errors are reported
        int num5 = 500;
        System.out.println(num5);
        {
            int num6 = 60;
            System.out.println(num6); // num6只作用于大括号内。
        }

        /*
         * int a = 10; int b = 20; int c = 30;
         */
        // 也可以这么写
        int a, b, c;
        a = 10;
        b = 20;
        c = 30;
        System.out.println(a);
        System.out.println(b);
        System.out.println(c);

        //同时创建三个int变量，并且同时各自赋值
        int x = 100, y = 200, z = 300;
        System.out.println(x);
        System.out.println(y);
        System.out.println(z);
    }
}
```



## 第六章 运算符

### 算数运算符

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2018.cnblogs.com%2Fi-beta%2F932676%2F202001%2F932676-20200116092359758-43430852.png&refer=http%3A%2F%2Fimg2018.cnblogs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625413731&t=41f4e004ca4b1d3c93759365ee6d3b81)

### 数据类型转换

```java
/*
1. 当数据类型不一样时，将会发生类型转换。

自动类型转换(隐式)
    1. 特点：代码不需要进行特殊处理，自动完成。
    2. 规则：数据范围从小到大。
*/
public class DemoDataType{
    public static void main(String[] args){
        System.out.println(1024);
        System.out.println(3.14);
        
        //左边是long，右边是默认的int类型，左右不一样。
        //一个等号代表赋值，将右侧的int常量，交给左侧的long变量进行存储。
        //int --> long ,符合了数据范围从小到大的要求。
        //这一行代码发生了自动类型转换。
        long num1 = 100L;
        System.out.println(num1);

        //左边是double类型，右边是float类型，左右不一样。
        //float --> double,符合从小到大原则。
        //也发生了自动类型转换。
        double num2 = 2.5F;
        System.out.println(num2);

        //左边是float类型，右边是long类型，左右不一样。
        //long --> float,范围是float更大一些，符合从小到大的规则。
        //也发生了自动类型转换。
        float num3 = 30L;
        System.out.println(num3);
    }
}
```

```java
/*
强制类型转换
    1.特点 ： 代码需要进行特殊的处理，不能自动完成。
    2.格式 ： 范围小的类型 范围小的变量名 = (范围小的类型) 原本范围大的数据

注意事项 :
	1.强制类型转换一般不推荐使用，因为有可能发生精度损失，数据溢出。 
*/

public class Demo02DateType {
    public static void main(String[] args){
        //左边是int类型，右边是long类型，不一样
        //long --> int ,不是从小到大
        //不能进行自动转换。
        //格式 ： 范围小的类型 范围小的变量名 = （范围小的类型）原本范围大的数据
        int num = (int) 100L;
        System.out.println(num);

        //long强制转换成int类型
        int num2 = (int) 6000000000L;  // 数据溢出了。
        System.out.println(num2);

        //double --> int,强制类型转换
        int num3 = (int) 3.99;
        System.out.println(num3);  // --> 3 , 这并不是四舍五入，所有的小数点都会被舍弃掉。

        char zifu1 = 'A'; // 这是一个字符型变量，里面是大写字母A。
        System.out.println(zifu1 + 1); // 66, 也就是大写字母A被当作65处理。
        //计算机的底层会用一个数字（二进制）来代表字符A，就是65
        //一但char类型进行了数学运算，那么字符就会按照一定的规则翻译成为一个数字。

        // 
    }
    
}
```

### ASCII键码表

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.nnmutong.com%2Fupload%2Ftemp%2Fc9ab360089bb4981b9404a4ff7db7be0.png&refer=http%3A%2F%2Fwww.nnmutong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625933030&t=16afe2a5cef1b21b5b74611c93a2363b)

```java

/*数字和字符的对照关系表（编码表）
ASCII码表： American Standard Code For Information Interchange,美国信息交换标准代码。
Unicode码表：万国码。也是数字和符号的对照关系，开关0-127部分和ASCII完全一样，但是从128开始包含有更多字符。

48 - '0'
65 - 'A'
97 - 'a'
*/
public class Demo03DataTypeChar {
    public static void main(String[] args) {
        char zifu1 = '1' ;
        System.out.println(zifu1 + 0);

        char zifu2 = 'A';  //其实底层保存的是65

        char zifu3 = 'c';
        //左侧是int类型，右侧是char类型， char -- > int,确实是从小到大，可以进行自动类型转换。
        int num = zifu3;
        System.out.println(num);

        char zifu4 = '中';
        System.out.println(zifu4 + 0); // 20013
        /* 数字和字符的对照关系表（编码表）：

        ASCII码表 ： American Standard Code For Information Interchange  美国信息交换标准代码
        Unicode码表 ： 万国码。也是数字和符号的对照关系，开关 0-127部分和ascii码完全一致，但是从128开始包含有更多字符。

        */
    }
}
```

### 算术运算符 

#### 四则与取模运算

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_match%2F0%2F11167603671%2F0.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625933831&t=5595e0c3a50edf68fad33562e3902943)

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgss0.baidu.com%2F-fo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2F03087bf40ad162d9ec5c507a11dfa9ec8a13cd21.jpg&refer=http%3A%2F%2Fgss0.baidu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625933831&t=07c80040b969d32fc878d3e2cd1cab47)

```java
/*
运算符：进行特定操作的符号。例如：+
表达式：用运算符连起来的式子叫做表达式，例如：20 + 5，又例如：a + b

四则运算：
加：+
减：-
乘：*
除：/

取模（余数）（MOD）：%

首先计算得到表达式的结果，然后再打印输出这个结果。
复习一下小学一年级的除法公式：
被除数 / 除数 = 商 + 余数

对于一个整数的表达式来说，除法用的是整数，整数除以整数，结果仍然是整数，不看余数。
只有对于整数的除法来说，取模运算符才有余数的意义。

注意事项 ：
    1. 一旦运算当中有不同类型的数据，那么结果将会是数据范围大的那种。
*/

public class Domo04Operator{
    public static void main(String[] args){
        //两个常量之间可以进行数学运算
        System.out.println(20 + 30);

        //两个变量之间也可以进行数学运算。
        int a = 20;
        int b = 5;
        System.out.println(a-b); // 15

        //变量和常量之间可以混合使用。
        System.out.println(a * 10); //200

        //除法
        int x = 10;
        int y = 3;
        int result  = x / y;
        System.out.println(result); // 3

        //余数
        int result2 = x % y;
        System.out.println(result2); // 1

        // int + double --> double + double --> double
        double result3 = x + 2.5;
        System.out.println(result3);  // 12.5
    }
}
```

#### 加号的多种用法

```java
/*
 四则运算当中的加号“+”有常见的三种用法：
 
 1.对于数值来说，那就是加法。
 2.对于字符char类型来说，在计算之前，char会被提升为int,然后再计算。
 char类型字符，和int类型数字，之间的对照关系表 ： ASCII、Unicode
 3.对于字符串String(首字母大写，并不是关键字)来说，加号代表字符串连接操作。
 任何数据类型和字符串进去连接的时候，结果都会变成字符串
 */

public class Demo05Plus {
    public static void main(String[] args) {
        // 字符串类型的变量基本使用
        //数据类型 变量名称 = 数据值；
        String str1 = "Hello";
        System.out.println(str1);

        System.out.println("Hello" + "World ");

        String str2 = "Java";
        System.out.println(str2 + 20);

        //优先级问题
        System.out.println(str2 + 20 + 30); // java2030
        System.out.println(str2 + (20 + 30)); //java50 

    }
}
```

#### 自加自减运算符

```java
/*
自增运算符 ： ++
自减运算符 ： --

含义 ： 让一个变量涨一个数字1，或者让一个变量降一个数字1
使用格式：写在变量名称之前，或者写在变量名称之后。例如 ： ++num，也可以num++
使用方式：
    1.单独使用：不和其他任何操作混合，自己独立成为一个步骤。
    2.混合使用：和其他操作混合，例如使用赋值混合，或者与打印操作混合，等。
使用区别：
    1.在单位使用的时候，前++和后++没有任何区别。
    2.在混合使用的时候，有【重大区别】
        A. 如果是前++，那么变量立刻马上+1，然后拿着结果进行使用。    【先加后用】
        B. 如果是后++，那么首先使用变量本来的数值，然后再让变量+1.   【先用后加】

注意事项 ：
    只有变量才能使用自增、自减运算符。常量不可发生改变，所以不能用。
*/

public class Demo06Operator{
    public static void main(String[] args){
        int num1 = 10;
        System.out.println(num1); //10
        ++num1;
        System.out.println(num1);
        num1++;
        System.out.println(num1);
        System.out.println("================================================");

        //与打印操作混合的时候。
        int num2 = 20;
        System.out.println(++num2); //混合使用，先++，变量立刻马上变成21，打印21
        System.out.println("================================================");

        int num3 = 90;
        //混合使用，后++，首先使用变量本来的30，然后再让变量+1得到31
        System.out.println(num3++);
        System.out.println(num3);
        System.out.println("================================================");

        int num4 = 40;
        //和赋值操作混合
        int result1 = --num4;  //混合使用，前--，变量立马-1变成39，然后将结果39交给result1变量。
        System.out.println(result1); //39
        System.out.println(num4); //39
        System.out.println("================================================");

        int num5 = 50;
        int result2 = num5--;
        System.out.println(result2);  //50
        System.out.println(num5);     //49
        System.out.println("================================================");

        int x = 10;
        int y = 20;
        int result3 = ++x + y--; 
        System.out.println(result3);  //31
        System.out.println(x); //11
        System.out.println(y); //19

    }
}

```

### 赋值运算符

```java
/*
赋值运算符分为：

基本赋值运算符：就是一个等号“=”，代表将右侧的数据交给左侧的变量。

复合赋值运算符：
    +=      a+=1    相当于      a = a + 1
    -=      b-=4    相当于      b = b - 4
    *=      c*=5    相当于      c = c * 5
    /=      d/=6    相当于      d = d / 6
    %=      e%=7    相当于      e = e % 7

注意事项 ：
    1. 只有变量才能使用赋值运算符，常量不能进行赋值。
    2. 复合赋值运算符其中隐含了一个强制类型转换。
*/
public class Demo07Operator{
    public static void main(String[] args) {
        int a = 10;
        //按照公式进行翻译 ： a = a + 5
        //a = 10 + 5
        //a = 15,
        //a本来就是10，现在重新赋值得到15
        a += 5;
        System.out.println(a);

        int x = 10;
        x %= 3;
        System.out.println(x);

        byte num = 30;
        // num = num + 5;
        // byte + int -- > (byte)int + int  -- > int
        num += 5;
        System.out.println(num);
    }
}
```

### 比较运算符

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.bjpowernode.com%2Fueditor%2Fphp%2Fupload%2Fimage%2F20200310%2F1583812822850443.png&refer=http%3A%2F%2Fwww.bjpowernode.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626330452&t=4986601e9f408634d855b3df0db94c68)

```java
import jdk.javadoc.internal.doclets.formats.html.SystemPropertiesWriter;

/*
比较运算符
大于 ： >
小于 ： <
大于等于 :  >=
小于等于 :   <=
相等 ： ==
不相等 ： !=

注意事项：
    1.比较运算符的结果一定是一个boolean值，成立就是true,不成立就是false.
    2.如果进行多次判断，不能连着写。
    数字当中的写法，例如 ： 1 < x < 3，程序当中不充许这样写。
*/


public class Demo08Operator{
    public static void main(String[] args){
        System.out.println(10>5);
        int num1 = 10;
        int num2 = 12;
        System.out.println(num1 < num2); //true
        System.out.println(num2 >= 100); //false
        System.out.println(num2 <= 100); //true
        System.out.println(num2 <= 12); //true
        System.out.println("=========================");

        System.out.println(10 == 10); //true
        System.out.println(20 != 25); //true
        System.out.println(20 != 20); //false
        System.out.println("=========================");

        int x = 2;
        //System.out.println(1 < x < 3); //错误写法，编译报错，不能连着写。
        
    }
}
```

### 逻辑运算符

![img](https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.zhimg.com%2Fv2-a3e752665c6afc182fe34d762215b548_b.jpg&refer=http%3A%2F%2Fpic1.zhimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626334748&t=1eb7ef1b0cd2a9839d984fd56c99b9ec)

```java
/* 
与(并且)    &&  全都是true,才是true,否则就是false
或(或者)    ||  只要有至少一个是true,就是true,全是false，才是false
非(取反)    !   本来是true，变成false，本来是false，变成true。

与"&&",或"||",具有短路效果：如果根据左边已经可以判断得到最终结果，那么右边的代码将不再执行，从而节省一定的性能。

注意事项：
    1.逻辑运算符只能用于boolean值。
    2.与、或需要左右稳中有降自有一个boolean值，但是取反只要有唯一的一个boolean值。
    3.与、或两种运算符，如果有多个条件，可以连续写。
两个条件：条件A && 条件B
多个条件：条件A && 条件B && 条件C

tips:
对于1 < x < 3的情况，应该拆分成两个部分，然后使用与运算符连接起来。
如 : int x = 2;
1 < x && x << 3
*/


public class Demo09Logic {
    public static void main(String[] args){
        System.out.println(true && false); //false

        System.out.println(true && true); //false
        System.out.println(3<4 && 10 > 5); //true
        System.out.println("=========================");

        System.out.println(true || false); //true
        System.out.println(true || true); //true
        System.out.println(false || false); //false
        System.out.println("=========================");

        System.out.println(true); //true
        System.out.println(!true); //false
        System.out.println("=========================");

        int a = 10;
        // false && ...  第一个条件不满足,后面就不用执行了(短路效果)
        System.out.println(3 > 4 && ++a < 100); //false
        System.out.println(a);

        int b = 20;
        // true || ....  第一个已经是true了，后面的就不用执行了（短路效果）
        System.out.println(3 < 4 || ++b < 100);  // true
        System.out.println(b); //20

    }
}
```

### 三元运算符



