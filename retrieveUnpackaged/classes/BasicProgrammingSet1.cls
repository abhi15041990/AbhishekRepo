public with sharing class BasicProgrammingSet1 {
    
    public integer x,y,z;
    /*method is for even odd check */
    public void evenOddCheck(integer x){
        y=x/2;
        z=y*2;
         if(z==x){
            system.debug('Even');
          }else{
            system.debug('Odd');
          }
    }
    /* method will create an array having input parameter passed */
    public List<String> arrayList(integer numb){
        List<String> lst = new List<String>();
        for(integer i=0;i<numb;i++){
            lst.add('Test' +i);
        }
        system.debug('Size of Array'  +lst.size());
        return lst;
    }
    /* method will sort the array in ascending order and decending order */
    public Integer[] arraySorting(integer numbInt){
        Integer [] arrayOfElements = new List<Integer>();
        arrayOfElements.add(4);
        arrayOfElements.add(2);
        arrayOfElements.add(3);
        arrayOfElements.add(2);
        arrayOfElements.add(4);
        arrayOfElements.add(5);
        arrayOfElements.sort();
        system.debug('Size of an Array' +arrayOfElements.size());
        system.debug('Array in ascending order' +arrayOfElements);
        Integer [] DecArrOfElements = new List<Integer>();
        for(integer i=arrayOfElements.size()-1;i>=0;i--){
            DecArrOfElements.add(arrayOfElements.get(i));
        }
        system.debug('Array in decending order' +DecArrOfElements);
        /*for max value*/
        Decimal maxvalue = arrayOfElements[0];
        for(integer i =0;i<arrayOfElements.size();i++)
        {
            if( arrayOfElements[i] > maxvalue)
                maxvalue = arrayOfElements[i];
        }    
        system.debug('the max value is'+maxvalue); 
        /*for min value*/ 
        Decimal minvalue = arrayOfElements[0];
        for(integer i =0;i<arrayOfElements.size();i++)
        {
            if( arrayOfElements[i] < minvalue)
                minvalue = arrayOfElements[i];
        }    
        system.debug('the min value is'+minvalue);
        return arrayOfElements;
    }
    
    public void findDuplicate(){
        integer[] arr = new List<Integer>{10, 5, 10, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 11, 12, 12 };
         integer store ;
        for (integer i = 0; i < arr.size(); i++){   
            integer coun = 0;
            if(store == arr[i]) continue;
          for (integer j = 0; j < arr.size() ; j++){
               if(arr[i] == arr[j]){
                  coun = coun+1;
               }
            } 
            system.debug('Number :  ' + arr[i] + '   occurence :  ' + coun);
            store = arr[i];
        }
    }
    
    /*Method will return the summation of all numbers that have input parameter passed*/
    public Integer summation(Integer intNumber){
        integer coun=0;
        for(integer i=1;i<=intNumber;i++){
            coun =coun + i;
        } 
        system.debug('Sumation is ' +coun);
        return coun;
    }
    /* method will return the simple intrest of input parameters passed having principle, rate, time */
    public Integer simpleIntrest(Integer sPrinciple, integer aRate, integer stime){
        integer simpIntrest ;
        simpIntrest = (sPrinciple * aRate * stime)/100;
        system.debug('simple intrest is : '+simpIntrest);
        return simpIntrest;
    }
}