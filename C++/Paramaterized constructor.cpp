#include<iostream>
using namespace std;
class A
{
	private:
		 int a,b;
		 public:
		 	A(int x,int y):a(x),b(y)
		 	{ }//this is the other way to write x=a and y=b;
		 	
			 int PrintFirst()
			 {
			 	return a;
			 }
			 int PrintSecond()
			 {
			 	return b;
			 }
			 void print()
			 {
			 	cout<<"Value of A: "<<a<<endl;
			 	cout<<"Value of B: "<<b<<endl;
			 
			 }
			
			
};
int main()
{
	A product(5,4);
  	product.print();
  cout<<product.PrintFirst()<<product.PrintSecond();
	
}
