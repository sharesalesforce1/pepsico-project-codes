import { LightningElement,wire } from 'lwc';
import getcontactinfo from '@salesforce/apex/ContactController.getContactList'
export default class ApexWireDemo extends LightningElement 
{
  contactlist

  //wire as a property
  @wire(getcontactinfo)contacts

  //wire as a function
  @wire(getcontactinfo)contactshandler({data,error}){
    if(data){
        this.contactlist = data.map(item=>{
            let newtype = item.LeadSource === 'Phone Inquiry' ? 'Phone' :
            item.LeadSource === 'Partner Referral' ? 'Referral' : '----'
            return {...item,newtype}
        })
    }
    if(error){
        console.error(error)
    }
  }
}