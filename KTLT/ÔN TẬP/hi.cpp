#include <iostream>

using namespace std;
int resupply(int shortfall, int supply[5][5])
{
    int values[25];
    int index = 0;

    // Chuyển mảng 2 chiều thành 1 chiều
    for (int i = 0; i < 5; ++i)
        for (int j = 0; j < 5; ++j)
            values[index++] = supply[i][j];

    // Sắp xếp giảm dần
    for (int i = 0; i < 24; i++)
    {
        for (int j = i + 1; j < 25; j++)
        {
            if (values[i] < values[j])
            {
                swap(values[i], values[j]);
            }
        }
    }
    for (int i = 0; i < 24; i++)
        cout << values[i] << " ";
    int minSum = -1;
    cout << endl;

    // Duyệt tất cả tổ hợp 5 phần tử khác nhau
    for (int i1 = 0; i1 < 21; ++i1)
        for (int i2 = i1 + 1; i2 < 22; ++i2)
            for (int i3 = i2 + 1; i3 < 23; ++i3)
                for (int i4 = i3 + 1; i4 < 24; ++i4)
                    for (int i5 = i4 + 1; i5 < 25; ++i5)
                    {
                        int currentSum = values[i1] + values[i2] + values[i3] + values[i4] + values[i5];
                        if (currentSum >= shortfall)
                        {
                            if (minSum == -1 || currentSum < minSum)
                            {
                                minSum = currentSum;
                            }
                            break;
                        }
                    }

    return minSum;
}
int main()
{
    int supply[5][5] = {
        {10, 2, 30, 40, 50},
        {5, 15, 25, 35, 45},
        {60, 70, 80, 90, 100},
        {12, 22, 32, 42, 52},
        {10, 2, 3, 4, 5}};
    cout << "Tổng nhỏ nhất >= 150 là: " << resupply(200, supply) << endl;
}