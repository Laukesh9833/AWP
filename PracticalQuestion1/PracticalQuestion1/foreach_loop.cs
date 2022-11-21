using System;

class foreach_loop
{
    public static void Main(string[] args)
    {
       int[] num= { 1,2,3,4,5,6,7,8,9};
        foreach (int val in num) {
            Console.WriteLine(val);
        }
    }
}
