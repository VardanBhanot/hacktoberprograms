//Write a java program to input a string message and display it 10 times in the following manner. Use a while loop.  Let the string message be “Hello”. 
//Rewrite the above java program in such a way that takes the number of lines to print as a command-line argument. You may assume that the argument is less than 1000.

import java.util.*;

public class hello
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner (System.in);
		System.out.println("Enter no. of lines you want to print");
		int n= sc.nextInt();
		System.out.println("Enter a message");
		String s = sc.next();
		int i = 1;
		while(i<=n)
		{
			System.out.print(i);

			if(i%10==1 && i%100!=11)
				System.out.print("st ");
			else if (i%10==2 && i%100!=12)
				System.out.print("nd ");
			else if (i%10==3 && i%100!=13)
				System.out.print("rd ");
			else System.out.print("th ");
			
			System.out.println(s);
			i++;
		}
	}
}
