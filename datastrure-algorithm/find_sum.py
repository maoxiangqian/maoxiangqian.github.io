def get_sub_set(arr):
    n=len(arr)
    res=[]
    for i in range(2**n):
        nums=[]
        for j in range(n):
            if i&(1<<j):
                nums.append(arr[j])
        res.append(nums)
    return res


print(get_sub_set([1,2,3]))




