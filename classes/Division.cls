public class Division {
    public static void div(Decimal marks1,decimal marks2,decimal marks3){
        decimal total = marks1 + marks2 + marks3;
        decimal percent = (total/300)*100;
        system.debug(percent);
        
        if(percent >=60){ 
            system.debug('first Devision');
        }
        
        else if (percent>=48){
            
            system.debug('second devision');
        }
        else{ 
            if(percent >=36) {
                system.debug('third devision');
            }else{
                system.debug('fail');
            }
            
        } 
    }
}