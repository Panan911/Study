
import random

# 随机生成1-10之间的10个整数。
nums = [random.randint(1,10) for i in range(10)]
# 随机生成1-10之间的10个不重复的整数。
nums1 = random.sample(range(1,11),10)
print(nums1)
############## 给定一个整数组nums和一个目标值target,请你在该数组中找出和为目标值的那两个整数，并返回他们的数组下标。
'''
解题思路:
1 : 因为nums[0] + nums[1] = target,所以target - nums[0] = nums[1],如果nums[1]在nums中，则打印出两个数值的index。
2 : 用字典模拟哈希的方法
'''
target = 18

def findnum():
    '''方法一'''
    lens = len(nums)
    j = -1
    for i in range(lens):
        if (target - nums[i]) in nums :
            if (nums.count(target - nums[i]) == 1) or (target - nums[i] == nums[i]) :
                continue
            else :
                j = nums.index(target - nums[i], i + 1)
                break
    
    if j > 0 :
        return [i,j]
    else:
        return []
    
def findnum2():
    '''方法二'''
    global i,j
    hashmap = {}
    for ind,num in enumerate(nums1):
        hashmap[num] = ind
    for i,num in enumerate(nums1):
        j = hashmap.get(target - num)
        if j is not None and i != j :
            print(i,j)


if __name__ == "__main__":
    findnum2()