#include<iostream>
using namespace std;
class A{
	public:
		void put_a()
		{
			cout<<"Class A ";
		}
};
class B: protected A{
	public:
		void put_b()
		{
			cout<<"\n class B";
		}
};
int main ()
{
	B ob;
	ob.put_b();
	return 0;
}
