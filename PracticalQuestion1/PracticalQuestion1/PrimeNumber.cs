using System;

    class PrimeNumber
    {
    public static void Main(string[] args) {
        int num = 7,flag=0;
        for (int i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                Console.WriteLine("Not Prime Number");
                flag = 1;
                break;
            }
           
        }
        if (flag == 0)
        {
            Console.WriteLine("Prime Number");
            }
    }
    }
