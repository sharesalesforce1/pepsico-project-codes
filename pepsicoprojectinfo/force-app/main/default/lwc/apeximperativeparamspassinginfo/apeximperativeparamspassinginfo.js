import { LightningElement,track } from 'lwc';
import searchrecords from '@salesforce/apex/accounthandlerinfo.getrecords';
const columns=[
    {label:'Name',fieldName:'Name',type:'text'},
    {label:'Phone',fieldName:'Phone',type:'Phone'},
    {label:'BillingCountry',fieldName:'BillingCountry',type:'text'}
]
export default class Apeximperativeparamspassinginfo extends LightningElement {
  @track billingcountry = ''
  @track accountslist=[];
  //@track hideshowtable=false;
  columns=columns

  changehandler(event)
  { 
       this.billingcountry = event.target.value
  }

  fetchrecords()
  {
     searchrecords({billingcountry : this.billingcountry})
     .then((result)=>{
        this.accountslist = result;
        //this.hideshowtable = true;
     })
     .catch((error)=>{
        this.error=error;
     })
  }
}