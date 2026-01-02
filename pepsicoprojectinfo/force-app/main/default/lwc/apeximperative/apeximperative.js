import { LightningElement,track } from 'lwc';
import getallactiveaccounts from '@salesforce/apex/accountclass.method1'
export default class Apeximperative extends LightningElement {

    @track accountslist;
    @track showaccounts=false;

  onshowclickinfo()
  {
    getallactiveaccounts().then(result=>{
        this.accountslist=result;
        this.showaccounts=true;
        console.log(showaccounts)
    })
    .catch(error=>{
        console.log('error message:'+error.body.message);
    })
  }

  onhideclickinfo()
  {
      this.showaccounts=false;
      console.log(showaccounts)
  }
}