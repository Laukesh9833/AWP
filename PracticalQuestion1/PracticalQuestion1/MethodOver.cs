using System;

    class MethodOver
    {
        public double multiple(double a, double b)
        {
            return a * b;
        }
        public double multiple(double a, double b, double c)
        {
            return a * b * c;
        }


        // Main Method
        public static void Main(String[] args)
        {
            MethodOver obj= new MethodOver();
            Console.WriteLine(MethodOver.multiple(4, 3));
            Console.WriteLine(MethodOver.multiple(4, 5, 3));
            Console.ReadLine();
        }
    }

