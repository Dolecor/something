// A simple test of two variants of parity check

#include <iostream>

#include "is_even.hpp"


void test1()
{
    bool failed = false;

    for (int i = -100; i < 100; ++i)
    {
        if (isEven1(i) != isEven2(i))
        {
            std::cout << "test1() failed (i = " << i  << ")" << std::endl;
            failed = true;
        }
    }

    if (!failed)
    {
        std::cout << "test1() passed" << std::endl;
    }
}


int main()
{
    test1();

    return 0;
}