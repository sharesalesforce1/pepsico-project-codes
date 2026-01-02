import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact'
import NAME_FIELD from '@salesforce/schema/Contact.Name'
import TITLE_FIELD from '@salesforce/schema/Contact.Title'
import PHONE_FIELD from '@salesforce/schema/Contact.Phone'
import EMAIL_FIELD from '@salesforce/schema/Contact.Email'

export default class Recordeditformdemoinfo extends LightningElement 
{
    objectName=CONTACT_OBJECT;
    fields={
        nameField:NAME_FIELD,
        titleField:TITLE_FIELD,
        phoneField:PHONE_FIELD,
        emailField:EMAIL_FIELD
    }

  submithandler(event)
 {
  const field=event.detail.fields;
  this.template.querySelector('lightning-record-edit-form').submit(fields); 
 }

 handlereset()
 {
    const inputfields=this.template.querySelectorAll('lightning-input-field');
    if(inputfields){
        Array.from(inputfields).forEach(field=>{
            field.reset();
        })
    } 
}

}