public class RectangleStatic {
    public static Integer area(integer length,Integer breadth){
     //   decimal length = 5.5,breadth  = 6;
       // decimal a = length * breadth;
        integer a;
        a=length*breadth;
        //system.debug('Area =' + a);
        return a;
    }
    public static void perimeter(){
        decimal length = 5.5,breadth  = 6;
        decimal p = 2 * (length * breadth);
        system.debug('perimeter =' + p);
    }
    public static decimal peri(decimal x,decimal y){
        decimal b =2 * (x * y);
        //system.debug('permiter is =' + b);
        return b;
    }
}