import { LightningElement } from 'lwc';
export default class Getterinlwc extends LightningElement {
   users=["a","b","c"]

   num1=10
   num2=20

   get firstuser()
   {
    return this.users[0]
   }

   get addition()
   {
    return this.num1+this.num2
   }
}