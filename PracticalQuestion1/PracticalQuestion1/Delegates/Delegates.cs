using System;
using System.Collections.Generic;
using System.Text;


    class Delegates
    {
    public delegate void del();
    public static void method1()
    {
        Console.WriteLine("Method1 is calling.......");
    }
    public static void method2() {
        Console.WriteLine("Method2 is calling.......");
    }
    public static void Main(string[] args) {
        del obj1 = new del(method1);
        del obj2 = new del(method2);
        obj1();
        obj2();
    }
    }

