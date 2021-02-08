# 装饰器的作用

> 当一个函数中，不同逻辑混杂在一起的时候，程序的可读性会大打折扣。这个时候，可以考虑用一种叫做“装饰器”的东西来重新整理代码。

```python
import time

def display_time(func):
    def wrapper(maxnum):
        t1 = time.time()
        func(maxnum)
        t2 = time.time()
        print(t2 - t1)
    return wrapper


def is_evennumber(num):
    if num % 2 == 0 :
        return True
    else:
        return False

@display_time
def prime_nums(maxnum):
    for i in range(maxnum):
        result = is_evennumber(i)
        if result :
            print('{} is a evennumber'.format(i))
        else :
            pass    

prime_nums(10000)
```









