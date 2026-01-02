public class myApex17 
{
  public static void method1()
  {
      List<List<Integer>>nestedlist = new List<List<Integer>>();
      
      List<Integer>innerlist1 = new List<Integer>{1,2,3};
      List<Integer>innerlist2 = new List<Integer>{4,5,6};
      List<Integer>innerlist3 = new List<Integer>{7,8,9};
          
      nestedlist.add(innerlist1);
      nestedlist.add(innerlist2);
      nestedlist.add(innerlist3);
      
      system.debug(nestedlist);
       
  }
}