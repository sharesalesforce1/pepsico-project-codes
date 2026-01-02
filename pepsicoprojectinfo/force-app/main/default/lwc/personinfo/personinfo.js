import { LightningElement,api,track } from 'lwc';
export default class Personinfo extends LightningElement {
   @api location;

   @track user={
    firstname:'Richard',
    lastname:'Hendricks'
   }

   @api
   updateuser()
   {
    console.log('function called');
    this.user.firstname = 'Gavin';
   }
}