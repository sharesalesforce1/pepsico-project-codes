import { LightningElement,api,track } from 'lwc';
export default class Person extends LightningElement {
   @api location;

   @track user={
    firstName:'Richard',
    LastName:'Hendrik'
   }

   @api
   clickme()
   {
     this.user.firstName='sfdc'
   }
}