using System;
    class factorial
    {
        public static void Main(string[] args) { 
            int num=5;
        int fact = 1;
        for (int i = 1; i <= num; i++) {
            fact = fact * i;
        }
            Console.WriteLine("factorial is " + fact);
        Console.ReadKey();
        }
    }

