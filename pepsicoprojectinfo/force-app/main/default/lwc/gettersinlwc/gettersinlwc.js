import { LightningElement } from 'lwc';
export default class Gettersinlwc extends LightningElement {
   users=["abc","def","ghi"]
   num1=2
   num2=10

   get firstuser()
   {
    return this.users[0]
   }

   get multiply()
   {
     return this.num1*this.num2
   }
}