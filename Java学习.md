[TOC]

# Java学习

## 第一章 java是什么

Java语言是美国sun公司(Stanford University Network)，在1995年推出的高级编程语言。所谓编程语言，是计算机的语言，人们可以使用编程语言对计算机下达命令，让计算机完成人们需要的功能。

## 第二章 java语言开发环境搭建

### 2.1 java虚拟机 -- JVM

![image-20210530223020511](E:\Study\Java学习.assets\image-20210530223020511.png)

### 2.2 JRE和JDK

![image-20210530223131404](E:\Study\Java学习.assets\image-20210530223131404.png)



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

