import { LightningElement,track } from 'lwc';
import searchrecords from '@salesforce/apex/Accounthandler.getrecords'
const columns=[
    {label:'Name',fieldName:'Name',type:'text'},
    {label:'Phone',fieldName:'Phone',type:'phone'},
    {label:'BillingCountry',fieldName:'BillingCountry',type:'phone'}
]
export default class Apeximperativeparameterpassing extends LightningElement 
{
  @track billingcountry=''
  @track accountslist=''
  @track showdropdown=false;
  columns=columns;

  changehandler(event)
  {
     this.billingcountry=event.target.value
  }

  fetchrecords()
  {
     searchrecords({billingcountry:this.billingcountry})
     .then((result)=>{
        this.accountslist=result;
        this.showdropdown=true;
     })
     .catch((error)=>{
        this.error=error;
     })
  }
}