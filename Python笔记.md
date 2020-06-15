[toc]

# 目录

## 二元操作符

| **操作符** |               **描述**               |
| :--------: | :----------------------------------: |
|    a+b     |                 a加b                 |
|    a-b     |                 a减b                 |
|    a*b     |                 a乘b                 |
|    a/b     |                a除以b                |
|    a//b    |               a整除以b               |
|    a**b    |               a的b次方               |
|    a&b     |       a与b,对于整数则是按位AND       |
|    a\|b    |       a或b,对于整数则是按位OR        |
|    a^b     | 对布尔值，a异或b，对整数则是按位异或 |
|    a==b    |           a和b相等则为True           |
|    a!=b    |          a和b不相等则为True          |
|  a<b,a<=b  |            小于，小于等于            |
|  a>b,a>=b  |            大于，大于等于            |
|   a is b   |    a和b是同一个Python对象则为True    |
| a is not b |     a和b不是同一个Python则为True     |



## 字符串

- 字符串中加入变量

```python
name = 'Panan'
outtext = '{name_} is a good boy!'.format(name_ = name)
print(outtext)
```

- 字符串内字符替换

```python
a = 'Food'
b = a.replace('F','G')
print(a,b)
```

- 字节与Unicode

```Python
val = 'espanol'
val_utf8 = val.encode('etf-8')
```



## 日期与时间

> Python中内建的datetime模块，提供了datetime、data和time类型。可能正如你想象，datetime类型是包含日期和时间相信的，最常见的方法是:

```Python
import datetime
# 获取当前的时间
now_time = datetime.datetime.now() 
print(now_time) # 2020-03-17 13:54:37.590400
# 格式化成我们想要的日期：strftime()
print(now_time.strftime('%Y-%m-%d' + ' ' + '%H-%M-%S'))
```

| 类型 |                             描述                             |
| :--: | :----------------------------------------------------------: |
|  %Y  |                          四位的年份                          |
|  %y  |                          两位的年份                          |
|  %m  |                          两位的月份                          |
|  %d  |                         两位的天数值                         |
|  %H  |                        小时(24小时制)                        |
|  %I  |                        小时(12小时制)                        |
|  %M  |                         两位的分钟值                         |
|  %S  |                        秒值【00,61】                         |
|  %w  |                            星期值                            |
|  %U  | 一年中的第几个星期的值；星期天是每周第一天，第一个星期天前的一周是第0个星期 |
|  %w  | 一年中第几个星期的值；星期一是每周第一天，第一个星期一前的一周是第0个星期 |
|  %Z  |    UTC时区偏置，格式为+HHMM或-HHMM，如果是简单时区则为空     |
|  %F  |                        %Y-%m-%d的简写                        |
|  %D  |                        %m/%d/%y的简写                        |



## 元组

> 元组是一种固定长度、不可变的python对象序列。创建元组最简单的办法就是用逗号分隔序列值。

### 概述

```Python
tup = 4,5,6
print(tup) # (4, 5, 6)
# 可以使用[]+序号来访问元组中的元素
print(tup[0]) # 4
```

```Python
# 使用tuple函数将任意序列或迭代器转换为元组：
1.tuple([4,0,2]) # (4,0,2)
2.tup = tuple('string')
  print(tup) # ('s','t','r','i','n','g')
```

一般情况下，元组是不可变的，如果元组中的一个对象是可变的，例如列表，你可以在它内部进行修改:

```Python
tup = ['foo',[1,2],True]
tup[1].append(3)
print(tup) # ('foo', [1, 2, 3], True)
```

可以使用  +  连接元组来生成更长的元组:

```Python
tup = (4,0) + ('Foo',[1,2,3],True) + ('bar',)
print(tup) # (4, 0, 'Foo', [1, 2, 3], True, 'bar')
```

将元组乘以整数，则会和列表一样，生成含有多份拷贝的元组:

```python
tup = (1,2,3)
print(tup) # (1, 2, 3, 1, 2, 3, 1, 2, 3)
```

### 元组拆包

如果想要将元组型的表达式赋值给变量，python会对等右边的值进行拆包:

```python
tup = (1,2,3) 
a,b,c = tup
print(b) # 2
# 也可以用另一种方式进行赋值,且对象相等:
z = tup[1]
if b == z :
    print(True)
else :
    print(False)
# True

# Python新增了一些更为高级的元组拆包功能。
tup = (1, 2, 3)
a, b, *rest = tup
print(a, b, rest) # 1 2 [3] -- 返回的rest是一个列表
```

### 元组的方法

```Python
tup = (1, 2, 3, 2, 3, 1, 1, 3)
print(tup.count(1)) # 3
```



## 列表

> 与元组不同，列表的长度是可以改变的，它所包含的内容也是可以任意修改的。你可以使用中括号或者list类型函数来定义列表。

```Python
# 示例
a_list = [2, 3, 7, None]
```

### 增加和移除元素

```Python
# 可以使用append()方法来添加元素，添加的值在list的最后
a_list = [2, 3, 7, None]
a_list.append('Apan')
print(a_list) # [2, 3, 7, None, 'Apan']

# 使用insert方法可以插入元素到指定的列表位置:
a_list = [2, 3, 7, None]
a_list.insert(1,'Apan')
print(a_list) # [2, 'Apan', 3, 7, None]
```

```Python
# insert的反操作是pop,该操作会将特定位置的元素移除并返回。
a_list = [2, 3, 7, None]
a_list.pop(2)
print(a_list) # [2, 3, None]

# 元素也可以通过remove方法移除,该方法会定位第一个符合要求的值并移除它。
a_list = [2, 3, 7, None, 3]
a_list.remove(3)
print(a_list) # [2, 7, None, 3]
## 循环删除某一元素:
a_list = [2, 3, 7, None, 3]
for i in range(len(a_list)):
    try :
        a_list.remove(3)
    except:
        break
print(a_list) #[2, 7, None]
```

```Python
# 检查元素是否在列表中:
a_list = [2, 3, 7, None, 3]
print(2 in a_list) # True
print(5 in a_list) # False
'''检查列表中是否包含一个值是非常慢的，因为需要的列表中进行线性逐个扫描。'''
```

### 连接和联合列表

``` Python
# 可以使用 +、 append和extend方法连接列表
list1 = [1,2,3] + [4,5,6]
print(list1) # [1, 2, 3, 4, 5, 6]

list1 = [1,2,3]
list2 = [3,4,5]
list1.append(list2)
print(list1) # [1, 2, 3, 4, 5, 6]

list1 = [1,2,3]
list2 = [3,4,5]
list1.append(list2)
print(list1) # [1, 2, 3, 4, 5, 6

'''
+运算是对于两个类型相同的变量之间的运算，不改变原有的变量，并返回一个新的值，是内容之间的拼接
append和extend方法会修改原有list的内容，没有返回值，可以扩展不同类型的变量，并将其内容以List变量的形式加入到原List中。
''' 
list1 = [1, 2, 3]
list2 = ['asdfs', 'fasfds', 55]
print(list1 + list2)  # [1, 2, 3, 'asdfs', 'fasfds', 55]
print(list1.extend(list2)) # None
```

### 排序

```Python
# 可以用sort()方法直接对列表内部进行排序
'''正序'''
list1 = [0,5,3,6,1,2,3,9]
list1.sort()
print(list1) # [0, 1, 2, 3, 3, 5, 6, 9]

'''逆序'''
list1 = [0,5,3,6,1,2,3,9]
list1.sort(reverse=True)
print(list1) # [9, 6, 5, 3, 3, 2, 1, 0]

'''按指定方法排序'''
list2 = ['PanAn','JiJie','PanXingYu']
list2.sort(key=len)
print(list2) # ['PanAn', 'JiJie', 'PanXingYu']
```

# 接续

### 二分搜索和已排序列表的维护

```python
import bisect

c = [1,2,4,5,7,8,9]
print(bisect.bisect(c,2)) # 2
print(bisect.bisect(c,5)) # 4
bisect.insort(c,6)
print(c) # [1, 2, 4, 5, 6, 7, 8, 9]

# NOTE
bisect还有bisect_left，insort_left的用法，和不带left的用法的区别是：当插入的元素和序列中的某一个元素相同时，该插入到该元素的前面（左边，left），还是后面（右边）；如果是查找，则返回该元素的位置还是该元素之后的位置。
```

### 切片

```python
seq = [7,2,3,7,5,6,0,1]
print(seq[1:5]) # [2, 3, 7, 5]

# 切片还可以序列赋值给变量
seq[3:4] = [6,3]
print(seq) # [7, 2, 3, 6, 3, 5, 6, 0, 1]

#也可以省略start或stop
print(seq[:5]) # [7, 2, 3, 6, 3]
print(seq[3:]) # [6, 3, 5, 6, 0, 1]

# 负索引可以从序列的尾部进行索引
print(seq[-4:]) # [5, 6, 0, 1]
print(seq[-6:-2]) #[6, 3, 5, 6]

# 步进值step可以在第二个冒号后面使用，意思是每隔多少个数取一个值：
seq = [7, 2, 3, 6, 3, 5, 6, 0, 1]
print(seq[::2]) # [7, 3, 3, 6, 1]
# 当需要对元组进行翻转时，一种很聪明的用法就是向步进传值-1
print(seq[::-1]) # [1, 0, 6, 5, 3, 6, 3, 2, 7]
print(seq[::-2]) # [1, 6, 3, 3, 7]
```



### enumerate 

>python 内建了enumerate函数，返回了(i,value)元组的序列，其中value是元素的值，i是元素的索引：

```python
list1 = ['foo','bar','baz']
mapping = {}

for i,v in enumerate(list1):
    mapping[v] = i

print(mapping) # {'foo': 0, 'bar': 1, 'baz': 2}
```



### sorted

> sorted 函数返回一个根据任意序列中的元素新建的已排序列表：

```python
list1 = [7,3,4,5,6,7,8,1]
print(sorted(list1)) # [1, 3, 4, 5, 6, 7, 7, 8]

str1 = 'horse race'
print(sorted(str1))  # [' ', 'a', 'c', 'e', 'e', 'h', 'o', 'r', 'r', 's']
```



### zip

> zip将列表、元组或其他序列的元素配对，新建一个元组构成的列表:

```python
seq1 = ['foo','bar','baz','']
seq2 = ['one','two','three']

zipped = zip(seq1,seq2)
print(list(zipped)) # [('foo', 'one'), ('bar', 'two'), ('baz', 'three')]

# zip可以处理任何长度的序列，它生成列表长度由最短的序列决定
seq3 = [False,True]
zipped2 = zip(seq1,seq2,seq3)
print(list(zipped2)) # [('foo', 'one', False), ('bar', 'two', True)]

# zip的常用场景为同时遍历多个序列，有时候会和enumerate同时使用。
for i,(a,b) in enumerate(zip(seq1,seq2)) :
    print('{0}:{1},{2}'.format(i,a,b)
#0:foo,one
#1:bar,two
#2:baz,three

# 将行的列表转换成列的列表
pitchers = [('nolan','ryan'),('Roger','clemens'),('Schilling','Curt')]

first_names,last_names = zip(*pitchers)

print(first_names) # ('nolan', 'Roger', 'Schilling')
print(last_names) # ('ryan', 'clemens', 'Curt')
```

