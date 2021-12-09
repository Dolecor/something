import sys
import time



def isEven1(value):
    return value % 2 == 0


def isEven2(value):
    return (value & 1) == 0


def main():
    if (len(sys.argv) < 2):
        print ("err")
        return
        
    whichUse = sys.argv[1]

    if (whichUse == "1"):
        func = isEven1
    elif (whichUse == "2"):
        func = isEven2
    else:
        print ("err")
        return
    
    start = time.time()
    
    for i in range(10000000):
        func(i)
        
    end = time.time()
        
    print("time: {}".format(end - start))


if __name__ == "__main__":
    main()
