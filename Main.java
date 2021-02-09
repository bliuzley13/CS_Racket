import java.util.*;
public class Main 
{  
  public static void main(String args[]) { 
    int i = 0;
    Integer[] intArray = {3,4,5,6,7,8,9,20};
    List<Integer> mylist = Arrays.asList(intArray);
    for(int val : mylist){
        i++;
    }
    System.out.print(i);
  } 
} 
