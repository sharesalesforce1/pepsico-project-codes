import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact'
import NAME_FIELD from '@salesforce/schema/Contact.Name'
import TITLE_FIELD from '@salesforce/schema/Contact.Title'
import EMAIL_FIELD from '@salesforce/schema/Contact.Email'
import PHONE_FIELD from '@salesforce/schema/Contact.Phone'

export default class Recordeditform extends LightningElement 
{
  objectName=CONTACT_OBJECT

  fields={
    nameField:NAME_FIELD,
    titleField:TITLE_FIELD,
    emailField:EMAIL_FIELD,
    phoneField:PHONE_FIELD
  }

  submithandler(event)
  {
      const fields=event.detail.fields;
      this.template.querySelector('lightning-record-edit-form').submit(fields);
  }

  handlereset()
  {
    const inputfields=this.template.querySelectorAll('lightning-input-field')

    if(inputfields)
    {
        Array.from(inputfields).forEach(field=>{
            field.reset()
        })
    }
  }

  successhandler(event) {
    this.dispatchEvent(
      new ShowToastEvent({
        title: 'Success',
        message: 'Contact record has been saved successfully!',
        variant: 'success'
      })
    );
  }
}