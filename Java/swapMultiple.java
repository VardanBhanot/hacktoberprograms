// WAp to make the exchange among the variables E,F,G,H,A without using temp variable
// swap variables such that E->A, A->H, H->F, F->G, G->E

public class swapMultiple
{
	public static void main(String args[])
	{
		int e = 1,f=2,g=3,h=4,a=5;
		System.out.print(e);
		System.out.print(a);
		System.out.print(h);
		System.out.print(f);
		System.out.print(g);
		System.out.println();

		/*e+=a;	a=e-a;	e=e-a;
		e+=h;	h=e-h;	e=e-h;
		e+=f;	f=e-f;	e=e-f;
		e+=g;	g=e-g;	e=e-g;*/
		// both above and below are correct
		e=a+f+g+h+e;
		a=e-(a+f+g+h);
		h=e-(a+f+g+h);
		f=e-(a+f+g+h);
		g=e-(a+f+g+h);
		e=e-(a+f+g+h);

		System.out.print(e);
		System.out.print(a);
		System.out.print(h);
		System.out.print(f);
		System.out.print(g);
		System.out.println();

		//e=a-e;
		

	}
}
