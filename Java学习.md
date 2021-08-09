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

``` java
/*
一元运算符 ： 只需要一个数据就可以进行操作的运算符。例如：取反！、自增++、自减--
二元运算符 ： 需要两个数据才可以进行操作的运算符。例如 ： 加法 + 、 减法 -
三元运算符 ： 需要三个数据才可以进行操作的运算符。

格式 ： 
数据类型 变量名称 = 条件判断 ? 表达式A : 表达式B;

流程：
首先判断条件是否成立 ：
    如果成立为true，那么将表达式A的值赋值给左侧的变量;
    如果不成立false，那么将表达式B的值赋值给左侧的变量;
二者选其一。

注意事项：
1.必须同时保证表达式A和表达式B都符合左侧数据类型的要求。
2.三元运算符的结果必须被使用。
*/


public class Demo10Operator{
    public static void main(String[] args){
        int a = 10;
        int b = 20;

        // 数据类型 变量名称 = 条件判断 ？ 表达式A ： 表达式B ;
        int max = a > b ? a : b; //最大值的变量
        System.out.println(max);

        System.out.println(a > b ? a : b);

    }
    
}
```

## 第七章 方法入门

### **什么是方法**

> 方法 ：就是将一个功能抽取出来，把代码单独定义在一个大括号内，形成一个单独的功能。
>
> 当我们需要这个功能时，就可以去调用。这样即实现了代码的复用性，也解决了代码冗余的问题。

```markdown
scanner.close()，这个close就是方法。
Java方法是语句的集合，这个集合一起执行能完成某个功能
方法就是解决一类问题的组合体，比如：加法运算，减法运算，很多地方都要用到，把它抽出来作为一个方法，所有地方都可以调用
方法包含于类或对象中
方法在程序中被创建，在其他地方被引用
```

``` java
/* 
定义一个方法的格式：

public static void 方法名称(){
    方法体
}

方法名称的命名规则和变量一样，使用小驼峰。
方法体：也就是大括号当中可以包含任意条语句。

注意事项 :
1.方法定义的先后顺序无所谓。
2.方法的定义不能产生嵌套包含关系。
3.方法定义好了之后，不会执行的。如果要想执行，一定要进行方法的调用。

如何调用方法，格式：
方法名称();
*/
public class Demo11Method{
    public static void main(String[] args){
        farmer();
        seller();
        cook();
        me();
    }

    public static void me(){
        //我
        System.out.println("吃");
    }

    public static void cook(){
        //厨子
        System.out.println("洗菜");
        System.out.println("切菜");
        System.out.println("炒菜");
        System.out.println("装盘");
    }

    public static void seller(){
        //小商贩
        System.out.println("运输到农贸市场");
        System.out.println("抬高价格");
        System.out.println("吆喝");
        System.out.println("卖给厨子");
    }

    //农民伯伯
    public static void farmer(){
        //农民
        System.out.println("播种");
        System.out.println("浇水");
        System.out.println("施肥");
        System.out.println("除虫");
        System.out.println("收割");
        System.out.println("卖给小商贩");
    }

}
```

### 编译器的两点优化

```java
/* 
对于byte/short/char三种类型来说，如果右侧赋值的数值没有超过范围，
那么javac编译器将会自动隐含地为我们补上一个(byte)(short)(char)。

1.如果没有超过左侧的范围，编译器补上强转。
2.如果右侧超过了左侧的范围，那么直接编译器报错。
*/
public class Demo12Notice{
    public static void main(String[] args){
        //右侧确实是一个int数字，但是没有超过左侧的范围，就是正确的。
        byte num1 = 30; //右侧没有超过左侧的范围。
        System.out.println(num1);

        //int --> char,没有超过范围.
        //编译器将会自动补上一个隐含的(char)
        char zifu = 65;
        System.out.println(zifu); //A
    }
}
```

```java
/*
在给变量进行赋值的时候，如果右侧的表达式当中全都是常量，没有任何变量。
那么编译器javac将会直接将若干个常量表达式计算得到的结果。
short = 5 + 8 ; //等号右边全都是常量，没有任何变量参与运算。
编译之后，得到的.class字节码文件当中相当于[直接就是]：
short result = 13;
右侧的常量结果数值，没有超过左侧范围，所以正确。
这称为“编译器的常量优化”

但是注意：一旦表达式当中没有变量参与，那么就不能进行这种优化了。
*/
public class Demo13Notice{
    public static void main(String[] args){
        short num1 = 10; // 正确写法，右侧没有超过左侧的范围

        short a = 5;
        short b = 8;
        //short result = a + b;  //错误写法，左侧需要是int类型

        // 右侧不用变量，而是采用常量，而且只有两个常量，没有别人
        short result = 5 + 8;   //  常量 + 常量 ，编译器会自动优化成 short = int + int。
        System.out.println(result);
    }
}
```

### 方法的定义格式和调用方法：

``` java
package com.cnjee;

/*
方法其实就是若干语句的功能组合。
方法好比是一个工厂。
蒙牛工厂     原料 ： 奶牛、饲料、水
            产出物：奶制品
钢铁工厂        原料：铁矿石、煤炭
                产出物：钢铁建材

参数（原料）：就是进入方法的数据。
返回值（产出物）：就是从方法中出来的数据。

定义方法的完整格式：
修饰符 返回值类型 方法名称(参数类型 参数名称){
    方法体
    return 返回值;
}

修饰符：现阶段的固定写法：public static
返回值类型: 也就是方法最终产生的数据结果是什么类型
方法名称：方法的名字，规则和变量一样，小驼峰
参数类型：进入方法的数据是什么类型
参数名称：进入方法的数据对应的变量名称
PS：参数如果有多个，可以使用逗号进行分隔
方法体：方法需要做的事情，若干行代码。
return：两个作用，第一停止当前方法;第二将后回的值返还给调用处。
反回值：也就是方法执行后最终产生的数据结果。

return 后面的“返回值”，必须和方法名称前面的“返回值类型”保持对应。
定义一个两个int数字相加的方法。三要素：
返回值类型 int
方法名称 sum
参数列表 int a,int b

方法的三种调用方式 ：
1.单独调用：方法名称(参数).
2.打印调用: System.out.println(方法名称(参数));
3.赋值调用: 数据类型 变量名称 = 方法名称(参数);

注意：
此前学习的方法，返回值固定类型写为void，这种方法只能单独调用，不能进行打印调用或者赋值调用。
*/
public class DemoMethod {
    public static void main(String[] args) {
        //单独调用
        sum(10,20);
        System.out.println("==========================");
        //打印调用
        System.out.println(sum(10,20));
        System.out.println("==========================");
        //赋值调用
        int result = sum(5, 6);
        System.out.println(result);
    }

    public static int sum(int a, int b) {
        int result = a + b;
        return result;
    }
}
```



### 方法调用的流程图

![image-20210624095538672](/Users/panan/Study/Java学习.assets/image-20210624095538672.png)

### 对比有参数和无参数

```java
package com.cnjee;
/*
* 有参数：小括号当中有内容，当一个方法需要一些数据条件，才能完成任务的时候，就有参数。
* 例如：两个数字相加，必须知道两具数字各自是多少，才能相加。
* 无参数：小括号当中留空。一个方法不需要任何数据条件，自己就能独立完成任务，就是无参数。
* 例如定义一个方法，需要打印10次helloworld。
*
*/

public class DemoMethodParam {
    public static void main(String[] args) {
        method1(5,20);
        System.out.println("===========================");
        method2();
    }

    //两个数字相乘，做乘法，必须知道两个数字各自是多少，否则无法进行计算。
    //有参数
    public static void method1(int a, int b) {
        int result = a * b;
        System.out.println("这里的结果是 : " + result);
    }
    //例如打印输出固定10次文本字符串
    public static void method2(){
        for(int i = 0; i < 10; i++){
            System.out.println("Hello,World" + i);
        }
    }
}
```

### 对比有返回值和无返回值

```java
package com.cnjee;

/*题目要求 ：定义一个方法，用来求出两个数字之和。（你帮我算，算完后把结果告诉我）
* 题目变形：定义一个方法，用来打印两个数字之和。（你来计算，计算完之后你自己负责显示结果，不用告诉我。）
*
* 注意事项：
* 对于有返回值的方法，可以使用单独调用、打印调用或者赋值调用。
* 但是对于无返回值的方法，可以使用单独调用，不能使用打印调用或者赋值调用。
* */

public class DemoMethodReturn {
    public static void main(String[] args) {
        int num = getSum(10,20);
        System.out.println("返回值是 : " + num);
        System.out.println("==========================");
        printSum(20,30);
        System.out.println("==========================");

        System.out.println(getSum(2,3));
        getSum((3,5));
        System.out.println("==========================");

        //对于void没有返回值的方法，只能单独，不能打印或者赋值。
        //System.out.println(printSum(2,3));
        //System.out.println(void);

        //int num2 = printSum(10,20); // 错误写法
    }
    //我是一个方法，我负责两个数字相加。
    //我有返回值int，谁调用我，我就把计算结果告诉谁

    public static int getSum(int a, int b){
        int result = a + b;
        return result;
    }

    public static void printSum(int a, int b) {
        int result = a + b;
        System.out.println("返回值是 : " + result);
    }
}
```

### 练习题

#### 1.定义一个方法，用来判断两个数字是否相同

``` java
package com.cnjee;

/*定义一个方法，用来判断两个数字是否相同*/

public class DemoMethodSame {
    public static void main(String[] args) {
        System.out.println(isSame(5,5));
        System.out.println(isSame(10,20));
    }

    public static boolean isSame(int a, int b){
        //第一种方法
        /*boolean same ;
        if(a==b){
            same = true;
        } else{
            same = false;
        }*/

        //三元运算方法：
        //same = a == b ? true : false;
        
        //比较简洁的写法
        //boolean same = a == b;
        
        //最简单的写法
        return a == b;
    }
}
```

#### 2.定义一个方法，用来求出1-100之间所有数字的和值。

```java
package com.cnjee;

/*
* 题目要求：定义一个方法，用来求出1-100之间所有数字的和值。
* */

public class DemoMethodSum {
    public static void main(String[] args) {
        int sum = getSum();
        System.out.println(sum);
    }

    public static int getSum(){
        int i = 1;
        int sum = 0;
        while (i<=100){
            sum = sum + i;
            i++;
        }
        return sum;
    }
}
```

#### 3.打印多次字符串

``` java
package com.cnjee;

public class HelloWorld {

    public static void main(String[] args) {
        printCount(50);  -- 参数可变
    }
    /*三要素：
    返回值类型：只是进行一大堆打印操作而已，没有计算，也没有结果要告诉调用处。
    方法名称:printCount
    参数列表：*/
    public static void printCount(int count) {
        for(int i = 1; i <= count ; i++){
            System.out.println("这是打印了第 " + i + " 次！");
        }
    }
}
```

### 方法的注意事项

```java
package com.cnjee;
/*
* 使用事项：
*       1.方法应该定义在类当中，但是不能在方法当中再定义方法，不能嵌套。
*       2.方法定义的前后顺序无所谓。
*       3.方法定义之后不会执行，如果希望执行，一定要调用;单独调用、打印调用、赋值调用。
*       4.如果方法有返回值，那么必须写上"return"，不能没有。
*       5.return后面的返回值数据，必须和方法的返回值类型对应起来。
*       6.对于一个void没有返回值的方法，就不能写return后面的返回值，只能写return自己。
*       7.对于方法当中最后一行的return可以省略不写。
*       8.一个方法中可以有多个return语句，但是必须保证同时只有一个会被执行到,两个return不能连写。
* */
public class DemoMethodNotice {
    public static void main(String[] args) {
        System.out.println(getMax(5,5));
    }

    public static int method1(){
        return 10;
    }

    public static void method2(){
        return;
        //return 10; //错误的方法，该方法没有返回值，return后面就不能写返回值。
    }

    public static void method3(){
        System.out.println("AAA");
        System.out.println("BBB");
        System.out.println("CCC");
        return;  //最后一行的return可以省略不写。
    }

    public static int getMax(int a, int b){
        /*int max;
        if (a > b ){
            max = a;
        } else {
            max = b;
        }
        return max;*/

        if (a > b){
            return a;
        } else {
            return b;
        }
    }
}
```

### 方法重载的基本使用

```java
package com.cnjee;

/*对于功能类似的方法来说，因为参数列表不一样，却要记住那么多不同的方法名称，太麻烦
* 方法的重载 : OverLoad (多个方法的名称一样，但是参数列表不一样);
* 好处：只需要记住唯一一个方法名称，就可以实现类似的多个功能。
*
* 方法重载和下列因素有关：
* 1.参数个数不同
* 2.参数类型不同
* 3.参数的多类型顺序不同
*
* 方法重载与下列因素无关：
* 1.与参数的名称无关
* 2.与方法的返回值类型无关
* */

public class DemoOverLoad {
    public static void main(String[] args) {
        System.out.println(sum(1,2));;
        System.out.println(sum(1,2,3));
        System.out.println(sum(1,2,3,4));
    }
    public static int sum(int a,double b){
        System.out.println("这是方法五");
        return (int) (a + b);
    }
    public static int sum(double a,int b){
        System.out.println("这是方法六");
        return (int) (a + b);
    }
    public static int sum(int x, int y){
        System.out.println("与方法重载无关1");
        return x + y;
    }
    /*这也是一种错误写法！与方法的返回值类型无关。
    public static double sum(int a, int b){
        return a + b + 0.0;
    }*/
    /*这是一种错误写法,与参数的名称无关
    public static int sum(int a, int b){
        System.out.println("这是方法一");
        return a + b;
    }*/
    public static int sum(double a,double b){
        System.out.println("这是方法四");
        return (int) (a + b);
    }
    public static int sum(int a, int b, int c){
        System.out.println("这是方法二");
        return a + b + c;
    }
    public static int sum(int a, int b, int c, int d){
        System.out.println("这是方法三");
        return a + b + c + d;
    }
}
```

### 重载练习1_四种不同参数类型的方法

```java
package com.cnjee;
/*
* 题目要求：
* 比较两个数据是否相等。
* 参数类型分别为两个byte类型，两个short类型，两个int类型，两个long类型
* 并在main方法中调用。
* */
public class DemoMethodOverloadSame {
    public static void main(String[] args) {
        byte a = 10;
        byte b = 20;
        System.out.println(isSame(a,b));

        System.out.println(isSame((short) 20,(short) 20));

        System.out.println(isSame(15,15));

        System.out.println(isSame(20L,30L));
    }

    public static boolean isSame(byte a, byte b){
        System.out.println("两个byte相比为 : ");
        return a == b;
    }
    public static boolean isSame(short a, short b){
        System.out.println("两个short相比为 : ");
        boolean result;
        if (a == b){
            return true;
        } else {
            return false;
        }
    }
    public static boolean isSame(int a, int b){
        System.out.println("两个int相比为 :");
        boolean result = a == b ? true : false;
        return result;
    }
    public static boolean isSame(long a, long b){
        System.out.println("两个long类型相比为 : ");
        boolean result;
        if (a == b){
            result = true;
        } else {
            result = false;
        }
        return result;
    }
}
```

### 重载练习2_判断方法的正确重载

```java
public static void open(){}  //正确重载
public static void open(int a){}　//正确重载
static void open(int a,int b){}   //代码错误，和第8行冲突。
public static void open(double a, int b){}　//正确重载
public static void open(int a,double b){}　//代码错误，和第6行重载
public void open(int i,double d){}　//代码错误，和第5行冲突
public static void OPEN(){}　//代码正确，不会报错，但是并不是有效重载
public static void open(int i ,int j){}　//代码错误，和第3行有冲突。
```

### 重载练习3_实现重载的println(方法)



## 第八章 流程控制

### if 语句

``` java
public class Demoif{
    public static void main(String[] args) {
        System.out.println("今天天气不错，正在压马路，突然发现一个快乐的地方：网吧");
            int age = 16;
            if(age >= 18){
                System.out.println("你已年满17岁，可以进入网吧");
                System.out.println("遇到一群猪队友，玩的不爽");
                System.out.println("回家吃饭");
            }
            System.out.println("回家吃饭");
        
    }
}
```

### if else 语句

```java
public class Demoif{
    public static void main(String[] args) {
        System.out.println("今天天气不错，正在压马路，突然发现一个快乐的地方：网吧");
            int age = 16;
            if(age >= 18){
                System.out.println("你已年满17岁，可以进入网吧");
                System.out.println("遇到一群猪队友，玩的不爽");
                System.out.println("回家吃饭");
            } else {
                System.out.println("你还没有满18岁，先回去喝奶吧！");
            }
            System.out.println("回家吃饭");
        
    }
}
```

### if ... else if ...

```java
public class Demoif{
    public static void main(String[] args) {
        System.out.println("今天天气不错，正在压马路，突然发现一个快乐的地方：网吧");
            int age = -1;
            if(age >= 18){
                System.out.println("你已年满17岁，可以进入网吧");
                System.out.println("遇到一群猪队友，玩的不爽");
                System.out.println("回家吃饭");
            } else if (age == -1) {
                System.out.println("请输入正确的年龄！");
            } else {
                System.out.println("你还没有满18岁，先回去喝奶吧！");
            }
            System.out.println("回家吃饭");
        
    }
}
```

### 使用if语句替换三元运算符

```java
/*
题目:使用三元运算符和标准的if-else语句分别实现：取两个数字中的最大值。
*/

public class Demo06Max{
    public static void main(String[] args) {
        int a = 188;
        int b = 20;

        //首先使用三元运算符
        //int max = a > b ? a : b;

        //今天使用if语句:
        int max;
        if (a > b){
            max = a;
        } else {
            max = b;
        }
        System.out.println("最大值:" + max);

    }
}
```

### 标准的switch语句

<img src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.51wendang.com%2Fpic%2Fcf85d30a3c221c9ca7dc028e%2F11-810-jpg_6-1080-0-0-1080.jpg&refer=http%3A%2F%2Fwww.51wendang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626941437&t=54ab18873ceb5ac6a337d24005088e86" alt="img" style="zoom:50%;" />

<img src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimages.cnitblog.com%2Fblog%2F641601%2F201412%2F042053496398292.jpg&refer=http%3A%2F%2Fimages.cnitblog.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626941667&t=64dab3ff8fc5cfb5d25482a2e4ec1fda" alt="img" style="zoom:67%;" />

```java
public class Demo07Switch{
    public static void main(String[] args) {
        int num = 5;

        switch (num) {
            case 1:
                System.out.println("星期一");
                break;
            case 2:
                System.out.println("星期二");
                break;
            case 3:
                System.out.println("星期三");
                break;
            case 4:
                System.out.println("星期四");
                break;
            case 5:
                System.out.println("星期五");
                break;  
            case 6:
                System.out.println("星期六");
                break;  
            case 7:
                System.out.println("星期日");
                break;   
            default:
                System.out.println("数据不合理！请重新输入！");
                break;  //最后一个break可以活力，但是强烈推荐不要省略。
        }
    }
}
```

### Switch的语句穿透

``` java
/*
switch 语句使用的注意事项。
1.多个case后面的数值不能重复。
2.switch后面小括号中只能是下列数据类型:
    基本数据类型:byte/short/char/int
    引用数据类型:String/enum
3. switch 语句格式可以很灵活。前后顺序可以顺序,而且break语句还可以省略。
匹配哪一个case就从哪一个位置向下执行，直到遇到了break或者整体结束为止。
*/

public class DemoSwitchNotice{
    public static void main(String[] args) {
        int num = 2;

        switch (num) {
            case 1:
                System.out.println("你好");
                break;
            case 2:
                System.out.println("我好");
                break;
            case 3:
                System.out.println("大家好");
                break;
            default:
                System.out.println("你好，我好，大家好!");
                break;
        }
    }
}
```

### 循环结构_循环概述与基本组成部分

```java
For(初始化表达式➀;布尔表达式➁;步进表达式➃){
  循环体➂;
}
```

执行流程:

- 执行顺序：➀➁➂➃ --> ➁➂➃ --> ➁➂➃ .. ➁➂➃不满足为止。
  - ➀ 负责完成循环变量初始化。
  - ➁ 负责判断是否满足循环条件，不满足则跳出循环。
  - ➂ 具体执行的语句。
  - ➃ 循环后，循环语句所涉及的变量的变化情况。

#### For 循环语句

```java
/* 
循环结构的基本组成部分，一般可以分成四部分：

1.初始化语:在循环开始最初执行，而且只做唯一一次。
2.条件判断:如果成立，则循环继续;如果不成立，则循环退出。
3.循环体：重复要做的事情内容，若干行语句。
4.步进语句：每次循环之后都要进行的扫尾工作，每次循环结束之后都要进行一次。
*/
public class DemoFor {
    public static void main(String[] args) {
        for(int i = 1; i <= 100; i ++){
            System.out.println("Dosomething!" + i);
        }
        System.out.println("程序停止!");
    }
}
```

#### While 循环语句

```java
/*
while 循环有一个标准的格式，还有一个扩展格式。

标准格式：
while (条件判断) {
    循环体
}

扩展格式:
初始化语句；
while (条件判断){
    循环体;
    步进语句;
}

*/

public class DemoWhile{
    public static void main(String[] args) {
        for (int i = 1 ; i <= 10 ; i ++){
            System.out.println("我错啦" + i);
        }
        System.out.println("===========================");
        
        int i = 1;
        while (i <= 10) {
            System.out.println("我错啦" + i);
            i++;
        }
    }
}
```

#### Do-While 循环语句

```java
/*
do-while 循环的标准格式。
do{
    循环体
} while (条件判断);

扩展格式：
do{
    循环体
    步进语句
} while (条件判断);
*/

public class DemoDoWhile {
    public static void main(String[] args) {
        for (int i = 1; i <= 10 ; i ++){
            System.out.println("知道了知道了！" + i);
        }
        System.out.println("==========================");

        int i = 1;
        do {
            System.out.println("知道了知道了" + i);
            i++;
        } while (i <= 10);
    }
}
```

#### 三种循环的区别

``` java
/* 
三种循环的区别。

1. 如果条件判断从来没有满足过，那么for循环和while循环将会执行0次，但是do-while循环至少会执行一次。
2. for循环的变量在小括号当中定义，只有循环内部才可以使用。while循环和do-while循环初妈化语句本来就在外面 ，所以出来 循环之后还可以继续使用。
*/

public class Demo13LoopDifference{
    public static void main(String[] args) {
        for (int i = 1 ; i < 0; i++){
            System.out.println("Hello");
        }
        System.out.println("==========================");

        int i = 1;
        do{
            System.out.println("Hello");
            i++;
        } while (i < 0);
        System.out.println(i);
    }
}
```

#### 循环控制 Break

```java
/* 
break 关键字的用法有常见的两种

1. 可以用在switch语句中，一旦执行，整个switch语句立刻结束。
2. 还可以在循环语句当中，一旦执行，整个循环语句立刻结束，打断循环。

关于循环的选择，有一个小建议
1. 凡是次数确定的场景多用For循环。
*/
 
public class DemoBreak{
    public static void main(String[] args) {
        for (int i = 1; i <= 10 ; i++){

            //如果希望从第4次开始，后续全部不要了，就要打断循环。
            if (i == 4) {
                break;
            }
            System.out.println("Hello" + i);
        }
    }
}
```

#### 循环控制 Continue

```java
/*
另一种循环控制语句是continue关键字。
一旦执行，立刻跳过当前次循环剩余内容，马上开始下一次循环。
*/
public class DemoContinue{
    public static void main(String[] args) {
        for(int i = 1; i <= 10; i++){
            if (i == 4) {
                continue;
            }
            System.out.println(i + "层到了！");
        }
    }
}
```

#### 死循环

```java
/*
永远停不下来的循环，叫做死循环。
死循环的标准格式：
while(true){
    循环体
}
*/
public class DemoDeadLoop{
    public static void main(String[] args) {
        for(int i = 1; i <= 10;){
            System.out.println("Hello" + i);
        }

        while(true){
            System.out.println("i love you");
        }
    }
}
```

#### 嵌套循环

```java
public class DemoLoopHourAndMinute {
    public static void main(String[] args) {
        for(int i = 0; i < 24 ; i++){  //外层控制小时
            //System.out.println(i + "点");

            for(int minute = 0; minute < 60; minute++){  //内层控制小时内的分钟数
                System.out.println(i + "点" + minute + "分");
            }
        }
    }
}
```

## 第九章 数组

### 9.1 数组的定义

> 所谓的数组指的就是一组相关类型的变量集合，并且这些变量可以按照统一的方式进行操作

### 9.2 创建数组的方法

#### 动态创建

```java
package com.cnjee;

/*
* 数组：是一种窗口，可以同时存放多个数据值。
*
* 数组的特点：
* 1.数组是一种引用数据类型。
* 2.数组当中的多个数据，类型必须统一。
* 3.数组的长度在程序运行期间，不可改变。
*
* 数组的初始化：在内存当中创建一个数组，并且向其中赋予一些默认值。
*
* 两种常见的初始化方式：
* 1.动态初始化（指定长度）
* 2.静态初始化（指定内容）
*
* 动态初始化数组的格式　：
* 数据类型[]　数组名称　= new 数据类型[数组长度];
*
* 解析含义：
* 左侧数据的类型：也就是数组当中保存的数据，全都都统一的什么类型
* 左侧的中括号：代表我是一个数组
* 左侧的数组名称：给数组取一个名字
* 右侧的new：代表创建数组的动作
* 右侧数据类型：必须和左边的数据类型保持一致。
* 右侧中括号的长度：也就是数组当中，到底可以保存多少个数据，是一个int数字
* */

public class DemoArray {
    public static void main(String[] args) {
        // 创建一个数组，可以存放300个int类型的数据
        int[] arrayA = new int[300];
        //创建一个数组，可以存放10个double类型的数据
        double[] arrayB = new double[10];
        //创建一个数组，能存放5个字符串
        String[] arrayC = new String[5];
    }
}
```

#### 静态创建

```java
package com.cnjee;
/*
* 动态初始化（指定长度）：在创建数组的时候，直接指定数组当中的数据元素个数。
* 动态初始化（指定内容）：在创建数据的时候，不直接指定数据个数多少。而是直接将具体的数据内容进行指定。
*
* 静态初始化基本格式：
* 数据类型[]　数组名称　＝　new 数据类型[] {元素1，元素2，元素3　……};
*
* 静态初始化省略格式：
* 数据类型[]　数组名称　＝　{元素1，元素2，元素3　……};
*
* 注意事项:
* 1.虽然静态初始化中没有直接告诉长度，但是根据大括号里面的元素具体内容，也可以自动推算出来长度。
* 2.静态初始化标准格式可以拆分成为两个步骤。
* 3.动态初始化也可以拆分成为两个步骤。
* 4.静态初始化一旦使用省略格式，就不能拆分成为两个步骤了。
*
* 使用建议:
* 如何不确定数组当中的具体内容，就用动态初始化;否则，已经确定了具体的内容，就用静态初始化。
* */

public class DemoArray02 {
    public static void main(String[] args) {
        //直接创建一个数组，里面装的全是int数字,具体为:5,15,25;
        int[] array01 = new int[]{5,15,25};
        //创建一个数组，用来装字符串，具体如: hello,world,java
        String[] array02 = new String[]{"hello","world","java"};
        //创建一个数组，用省略格式。
        int[] array03 = {10,20,30};
        //静态初始化的标准格式，可以拆分成为两个步骤。
        int[] array04;
        array04 = new int[]{11,12,13};
        //动
        int[] array05;
        array05 = new int[5];
        //静态初始化的省略格式，不能拆分成为两个步骤。下列语句会报错。
        int[] array06;
        array06 = {10,11,12};
    }
}
```

### 9.3 如何调用数组

```java
package com.cnjee;
/*
* 直接打印数组名称，得到的是数组对应的内存地址哈希值
* 二进制：01
* 十进制：0123456789
* 16进制：0123456789abcdef
*
* 访问数组元素的格式：数据名称[索引值]
* 索引值：就是一个int数字，代表数组当中元素的编号。
*［注意］索引值从0开始，一直到“数组的长度 - 1”为止。
* */

public class DemoArray03 {
    public static void main(String[] args) {
        int[] array = {10,20,30};
        //直接打印数组当中的内容：
        System.out.println(array[0]);
        System.out.println(array[1]);
        System.out.println(array[2]);
        //将数组当中的内容赋值给一个变量
        int num = array[1];
        System.out.println(num);
    }
}
```

### 9.4 如何组数组重新赋值

```java
package com.cnjee;
/*
* 使用动态初始化数组的时候，其中的元素将会自动拥有一个默认值，规则如下：
* 1.如果是整数类型，那么默认为0
* 2.如果是浮点类型，那么默认为0.0
* 3.如果是字符类型，那么默认为'\u0000'
* 4.如果是布尔类型，那么默认为false
* 5.如果是引用类型，那么默认为null
*
* 注意事项：
* 静态初始化其实也有默认值的过程，只不过程序自动马上将默认值替换成为了｛｝中的具体数值。
* */

public class DemoArray04 {
    public static void main(String[] args) {
        //动态初始化一个数组
        int[] array = new int[3];

        System.out.println(array[0]);
        System.out.println(array[1]);
        System.out.println(array[2]);
        System.out.println("=========================");

        //将数据123赋值交给数组array中的1号元素。
        array[1] = 123;
        System.out.println(array[1]);
    }
}
```

### 9.5 java中的内存划分

![image-20210707170345047](/Users/panan/Study/Java学习.assets/image-20210707170345047.png)

#### 1.一个数组的内存图

```java
package com.cnjee;

public class DemoArrayOne {
    public static void main(String[] args) {
        int[] array = new int[3]; //动态初始化
        System.out.println(array); //打印的是内存地址
        System.out.println(array[0]);　//0
        System.out.println(array[1]);  //0
        System.out.println(array[2]);  //0
        System.out.println("================");

        //改变数组当中的元素的内容：
        array[1] = 10;
        array[2] = 20;
        System.out.println(array);  //此时内存地址不变
        System.out.println(array[0]); //0
        System.out.println(array[1]); //10
        System.out.println(array[2]); //20
    }
}
```



![image-20210708105357863](/Users/panan/Study/Java学习.assets/image-20210708105357863.png)

#### 2.两个数组的内存图

![image-20210708163437607](/Users/panan/Study/Java学习.assets/image-20210708163437607.png)

#### 3.两个引用指向同一个数组的内存图

![image-20210708172631367](/Users/panan/Study/Java学习.assets/image-20210708172631367.png)

### 9.6 数组索引越界异常

```java
package com.cnjee;
/*
* 数组的索引编号从0开始，一直到数组的长度－1为止
*
* 如果访问数组元素的时候，索引编号并不存在，那么将会发生数组索引越界异常
* ArrayIndexOutOfBoundsException
*
* 原因:索引编号写错了
* 解决:修改成为存在的正确索引编号。
* */

public class DemoArrayIndex {
    public static void main(String[] args) {
        int[] array = {15,25,35};

        System.out.println(array[0]);
        System.out.println(array[1]);
        System.out.println(array[2]);

        //错误　索引编号写错了
        //System.out.println(array[2]);
        
    }
}
```

### 9.7 空指针异常

```java
package com.cnjee;
/*所有的引用类型变量，都可以赋值为一个null值，但是代表其中什么都没有。
*
* 数组必须进行new初始化才能使用其中的元素
* 如果只是赋值了一个null，没有进行new创建，那么将会发生空指针异常
*
* NullPointerException
*
* 原因：忘了new
* 解决：补上new*/

public class DemoArrayNull {
    public static void main(String[] args) {
        int[] array = null;
        array = new int[3];
        System.out.println(array[0]);
    }
}
```

### 9.8 获取数组的长度

```java
package com.cnjee;

/*
* 数组的长度　: 数组名称.Length 将会得到一个int数字，代表数组的长度。
*
* 数组一旦创建，程序进行期间，长度不可改变
* 
* */

public class DemoArrayLen {
    public static void main(String[] args) {
        int[] ArrayA = new int[3];

        int[] ArrayB = {10,20,30};
        int Len = ArrayB.length;
        System.out.println(Len);
        System.out.println("======================");
        
        //下面的代码看似变更了arrayC的长度，实则只是更换了arrayC的指向地址
        int[] arrayC = new int[3];    //arrayC 指向内存A
        System.out.println(arrayC.length);
        arrayC = new int[5];    //arrayC 变更指向内存B
        System.out.println(arrayC.length);
        //　arrayC 由指向内存A变更为内存C，而其真正new出来的数组其实是不变的。
    }
}
```

### 9.9 数组的遍历

```java
package com.cnjee;

import java.sql.Array;

/*
* 遍历数组，说的就是对数组中的每一个元素逐一、挨个处理，默认的处理方式就是打印输出*/

public class DemoArray2 {
    public static void main(String[] args) {
        int[] array = { 15, 16, 20, 31, 55 };

        // 首先使用原始方式
        System.out.println(array[0]);
        System.out.println(array[1]);
        System.out.println(array[2]);
        System.out.println(array[3]);
        System.out.println(array[4]);
        System.out.println("====================");

        // 用for循环来遍历
        for (int i = 0; i < array.length; i++) {
            System.out.println(array[i]);
        }
        
    }
}

```

### 9.10 求数组中的最大值

```java
package com.cnjee;

public class DemoArrayMax {
    public static void main(String[] args) {
        int[] array = {5,15,30,20,10000};

        int max = array[0];
        for (int i = 1; i < array.length; i++) {
            //如果当前元素比max更大，则替换
            if(array[i] > max){
                max = array[i];
            }
        }
        //　输出最大值
        System.out.println("最大值 : " + max);

        int min = array[0];
        for (int i = 0; i < array.length; i++) {
            if(array[i] < min){
                min = array[i];
            }
        }

        //输出最小值
        System.out.println("最小值 : " + min);
    }
}

```

### 9.11 数组元素反转

```java
```

