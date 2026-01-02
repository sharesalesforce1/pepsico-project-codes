import { LightningElement,track } from 'lwc';
import getaccrecords from '@salesforce/apex/accountclassinfo.method1'
export default class Apeximperativeinfo extends LightningElement 
{
   @track accountslist;
   @track showaccounts=false;

   onshowclickrecords()
   {
      getaccrecords().
      then(result=>{
        this.accountslist = result;
        this.showaccounts = true;
      })
      .catch(error=>{
        this.error=error
        console.log('error occured:'+error.body.message)
      })
   }

   onhideclickrecords()
   {
        this.showaccounts=false;
   }
}