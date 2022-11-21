using System;
using System.Collections.Generic;
using System.Text;

namespace PracticalQuestion1.Function
{
    class MethodOverload
    {
        public int Product(int x, int y) {
            return x * y;
        }
        public int Product(int x)
        {
            return x;
        }
        public int Product(int x, int y, int z)
        {
            return x * y*z;
        }
        public static void Main(string[] args)
        {
            MethodOverload obj = new MethodOverload();
            Console.WriteLine(obj.Product(14, 10));
            Console.WriteLine(obj.Product(2));
            Console.WriteLine(obj.Product(3, 74, 1));
        }
    }
}
