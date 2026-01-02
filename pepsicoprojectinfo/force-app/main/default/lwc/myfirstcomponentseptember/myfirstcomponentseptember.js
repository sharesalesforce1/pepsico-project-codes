import { LightningElement,track } from 'lwc';
export default class Myfirstcomponentseptember extends LightningElement {
   fullname="Salesforce"
   title="lwc"

   changehandler(event)
   {
      this.title=event.target.value
   }

   @track address = {
      city:'melbourne',
      postalcode:533229,
      country:'australia'
   }

   trackhandler(event)
   {
      this.address.city=event.target.value;
   }
}