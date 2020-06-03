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

