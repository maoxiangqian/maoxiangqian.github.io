# def subset_sum(arr,target):
#     stack=[]
#     for i,num in enumerate(arr):
#         # 
#     pass

def create_status(status,arr,stack,target):
    index=status[0]
    if(index==len(arr)-1):
        return
    if status[1]==target:
        return 
    s1=[index+1,status[1]+arr[index+1]]
    s2=[index+1,status[1]]
    stack.append(s1)
    stack.append(s2)
    print(f"index={index},s1={s1},s2={s2},stack={stack}")
    create_status(s1,arr,stack)
    create_status(s2,arr,stack)

status=[-1,0]
arr=[1,2,3]
stack=[]

create_status(status,arr,stack)






