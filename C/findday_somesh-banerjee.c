#include<stdio.h>
//findday by somesh
int main(){
    int date,month,year,cal,d;
    printf("Enter all in numbers\n");
    do{
    printf("year(>1900)= ");    
    scanf("%d",&year);
    }while(year<=1900);
    do{
    printf("month= ");
    scanf("%d",&month);
    }while(month>12 || month<1);
    do{
    printf("date= ");
    scanf("%d",&date);
    }while(date<1 || (month==2 && date>28 && year%4!=0) || (month==2 && date>29 && year%4==0) || (month%2==1 && date>31) || (month%2==0 && date>30));
    int mn[12] = {0,3,3,6,1,4,6,2,5,0,3,5};
    year=year-1900;
    d=year/4;
    if(year%4==0)
    d--;
    cal=date+mn[month-1]+year+d;
    cal=cal%7;
    if(cal==0)
    printf("SUNDAY");
    else if(cal==1)
    printf("MONDAY");
    else if(cal==2)
    printf("TUESDAY");
    else if(cal==3)
    printf("WEDNESDAY");
    else if(cal==4)
    printf("THURSDAY");
    else if(cal==5)
    printf("FRIDAY");
    else 
    printf("SATURDAY");
return 0;
}
