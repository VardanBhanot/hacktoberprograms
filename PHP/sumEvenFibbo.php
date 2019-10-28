<?php

 // This Problem is Sum of Even fibbonacci Numbers
 // e.g. 2+8 = 10 

      $a=0;
      $b=1;
      $fibo= $a+$b;
      $sum=0;
            
            while($fibo<4000000){
                
                  $fibo=$a+$b;
                  $a=$b;
                  $b=$fibo;
                  if($fibo % 2==0){
                      $sum+=$fibo;
                      echo " ".$sum;
                  }
            }
       
           

?>