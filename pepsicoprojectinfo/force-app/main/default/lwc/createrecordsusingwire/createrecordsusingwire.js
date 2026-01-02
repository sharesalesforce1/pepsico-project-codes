import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi'
import CONTACT_OBJECT from '@salesforce/schema/Contact'
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class Createrecordsusingwire extends LightningElement {
    formFields={}
   changehandler(event)
   {
     const {name,value}=event.target //const {FirstName,sravan} = event.target
     this.formFields[name]=value;

     //this.formFields[FirstName]='sravan';

    /*
     formFields={
        FirstName:'sravan',
        LastName:'kumar',
        Phone:'+918292982',
        Email:'sravan@gmail.com'
     }
     */
   }

   createcontact()
   {
     const recordinput={apiName:CONTACT_OBJECT.objectApiName,fields:this.formFields}


     createRecord(recordinput).then(result=>{
        this.ShowToastEvent1('success!!',`contact created with ${result.id}`,'success')
        this.formFields={}
     })
     .catch(error=>{
        this.ShowToastEvent1('Error while creating the records!!',error.body.message,'error')
     })
   }

   ShowToastEvent1(title,message,variant)
   {
    this.dispatchEvent(
        new ShowToastEvent({
            title,
            message,
            variant
        }))
    }
   }