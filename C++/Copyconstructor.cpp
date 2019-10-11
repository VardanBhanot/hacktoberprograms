//copy constructor
#include<iostream>
#include<string>
using namespace std;
class A
{
	int a,b;
	string str;
	public:
		A(int x=0,int y=0, string z="empty"):a(x),b(y)
		{cout<<"\n Default Parameterized constructor";
		str=z;
		}
		A(A &z)
		{
			cout<<"\n copy constructor";
			a=z.a;
			b=z.b;
			str=z.str;
		}
		void put()
		{
			cout<<endl<<"a="<<a<<"and b="<<b;
			cout<<"\n Str= "<<str;
		}
};
main()
{
	A o1(10,20,"welcome");
	A o2(o1);
	A &o3=o2; // yo o3 kei haina just o2 ko copy ho...
	o3.put();
}
