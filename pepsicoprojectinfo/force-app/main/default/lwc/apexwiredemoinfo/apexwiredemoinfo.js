import { LightningElement,wire } from 'lwc';
import getcontactlist from '@salesforce/apex/Contactcontrollerinfo.getcontactlist'
export default class Apexwiredemoinfo extends LightningElement {
  contactslist
  //wire as a property  
  @wire(getcontactlist)contacts

  //wire as a function
  @wire(getcontactlist)contactshandler({data,error}){
    if(data)
    {
      this.contactslist = data.map(item=>{
        let newtype = item.LeadSource === 'Partner Referral' ? 'Partner':
        item.LeadSource === 'External Referral' ? 'External' : '----';
        return {...item,newtype};
      })
    }

    if(error)
    {
        console.error(error)
    }
  }
}