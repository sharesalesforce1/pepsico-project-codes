import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class Createrecorddemoinfo extends LightningElement {
 
 formFields={}
 changeHandler(event)
 { 
    const {name,value} = event.target
    this.formFields[name] = value;

    //this.formFields[FirstName] = 'vivek';
    //this.formFields[LastName] = 'sfdc';

    //formFields={'FirstName' : 'vivek' , 'LastName' : 'sfdc' , }
 }
  createcontact()
  {
     const recordinput = {apiName:CONTACT_OBJECT.objectApiName,fields:this.formFields};

     createRecord(recordinput).then(result=>{
        this.ShowToastInformation('success',`contact created with ${result.id}`,'success');
        this.formFields={}
     })
     .catch(error=>{
          this.ShowToastInformation('error','error creating the record','error');
     })
  }

  ShowToastInformation(title,message,variant)
  {
    const toastevent = new ShowToastEvent({
        title,
        message,
        variant
    })
    this.dispatchEvent(toastevent);
  }
}