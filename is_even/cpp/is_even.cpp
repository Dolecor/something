#include <is_even.hpp>

bool isEven1(int value)
{
    return value % 2 == 0;
}

bool isEven2(int value)
{
    return (value & 1) == 0;
}
