import { LightningElement } from 'lwc';

export default class HelloBinding extends LightningElement {
    greeting="World";
    handleChange(event){
        console.log(event);
         

        this.greeting=event.target.value;
        console.log(this.greeting);
        debugger;
       
    }
}