import { LightningElement,wire } from 'lwc';
import filtercontacttype from '@salesforce/apex/ContactController.filtercontacttype'
export default class WireApexwithparams extends LightningElement 
{
   selectedType=''
   @wire(filtercontacttype,{leadsource:'$selectedType'})filteredcontacts

   typehandler(event)
   {
    this.selectedType = event.target.value
   }

   get typeoptions()
   {
      return[
        {label:'Phone Inquiry',value:'Phone Inquiry'},
        {label:'Partner Referral',value:'Partner Referral'},
        {label:'Web',value:'Web'},
        {label:'Purchased List',value:'Purchased List'},
        {label:'Other',value:'Other'}
    ]
   }
}