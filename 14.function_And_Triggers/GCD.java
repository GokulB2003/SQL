/*Swap first nd last digit...*/
import java.util.*;
public class GCD
{
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		int a=8;
		int b=2;
		int ans=1;
		for(int i=1; i<=8/2; i++)
		{
			if(i%8==0 && i%4==0)
			{	

				ans=i;
			}
		}
		System.out.println(ans);
	}
}