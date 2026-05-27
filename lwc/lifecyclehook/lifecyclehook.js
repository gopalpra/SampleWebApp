import { LightningElement } from 'lwc';

export default class Lifecyclehook extends LightningElement {
   name='Gopal';
   price='$1000';
   ready=false;
   connectedCallback(){
    setTimeout(() => {
        this.ready=true;    
    }, 3000);
   }
}