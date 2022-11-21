using System;



/*class a {
    public void display1() {
        Console.WriteLine("This is A class");
    }
}
class b : a {
    public void display2() {
        Console.WriteLine("This is B class");
    }
}
class Inheritances
{
    public static void Main(string[] args) {
        a A = new a();
        A.display1();

        b B = new b();
        B.display2();
        B.display1();
    }
}*/
// B. Multilevel

/*class a
{
    public void display1()
    {
        Console.WriteLine("This is A class");
    }
}
class b : a
{
    public void display2()
    {
        Console.WriteLine("This is B class");
    }
}

class c : b {
    public void display3() {
        Console.WriteLine("This is C class");
    }
}
class Inheritances
{
    public static void Main(string[] args)
    {
        a A = new a();
        A.display1();

        b B = new b();
        B.display2();
        B.display1();

        c C = new c();
        C.display3();
        C.display2();
        C.display1();

    }
}*/

//C. hierarchical
/*class a
{
    public void display1()
    {
        Console.WriteLine("This is A class");
    }
}
class b : a
{
    public void display2()
    {
        Console.WriteLine("This is B class");
    }
}

class c : a
{
    public void display3()
    {
        Console.WriteLine("This is C class");
    }
}
class Inheritances
{
    public static void Main(string[] args)
    {
        a A = new a();
        A.display1();

        b B = new b();
        B.display2();
        B.display1();

        c C = new c();
        C.display3();
        C.display1();

    }
}*/

// D. Multiple  by Interface

interface a
{
    public void display1()
    {
        
    }
}
interface b 
{
    public void display2()
    {
       
    }
}

class c : a,b
{
    public void display1() {
        Console.WriteLine("This is interface A refrence");
    }
    public void display2() {
        Console.WriteLine("This is interface B refrencce");
    }
    public void display3()
    {
        Console.WriteLine("This is C class");
    }
}
class Inheritances
{
    public static void Main(string[] args)
    {
       c C = new c();
        C.display3();
        C.display2();
        C.display1();

    }
}
