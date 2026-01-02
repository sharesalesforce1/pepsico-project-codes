import { LightningElement,wire } from 'lwc';
import filtercontacttype from '@salesforce/apex/Contactcontrollerinfo.filtercontacttype'
export default class Apexwirewithparamsinfo extends LightningElement {
    selectedType=''

   @wire(filtercontacttype,{leadsource : '$selectedType'})filteredcontacts
   
    get Typeoptions()
    {
        return [
            {label:"Phone Inquiry",value:"Phone Inquiry"},
            {label:"Partner Referral",value:"Partner Referral"},
            {label:"External Referral",value:"External Referral"},
            {label:"Web",value:"Web"},
            {label:"Purchased List",value:"Purchased List"}
        ]
    }

    typehandler(event)
    {
      this.selectedType = event.target.value
    }
}