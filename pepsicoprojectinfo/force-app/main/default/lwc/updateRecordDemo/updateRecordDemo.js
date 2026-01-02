import { LightningElement, wire, track } from 'lwc';
import getconlist from '@salesforce/apex/updateRecordDemoClass.getconlist';
import { updateRecord } from 'lightning/uiRecordApi';
import { refreshApex } from '@salesforce/apex'; // Import refreshApex
import FIRST_NAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LAST_NAME_FIELD from '@salesforce/schema/Contact.LastName';
import ID_FIELD from '@salesforce/schema/Contact.Id';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone'

const colm = [
  { label: 'First Name', fieldName: 'FirstName', type: 'text', editable: true },
  { label: 'Last Name', fieldName: 'LastName', type: 'text', editable: true },
  { label: 'Phone', fieldName: 'Phone', type: 'phone', editable: true },
  { label: 'Email', fieldName: 'Email', type: 'email', editable: true }
];
export default class UpdateRecordDemo24 extends LightningElement 
{
  @track col = colm;
  @track draftValues = []; // Use draftValues to track changes
  @track conData = []; // Track the retrieved data
  wiredConList;

  //i am storing all the apex-class data to the conData.
  @wire(getconlist)
  wiredContacts(result) {
    this.wiredConList = result;
    if (result.data) {
      this.conData = result.data;
    }
  }

  handleSave(event) {
    const recordInputs = event.detail.draftValues.map((draft) => {
      const fields = {};
      fields[ID_FIELD.fieldApiName] = draft.Id;
      fields[FIRST_NAME_FIELD.fieldApiName] = draft.FirstName;
      fields[LAST_NAME_FIELD.fieldApiName] = draft.LastName;
      fields[EMAIL_FIELD.fieldApiName]=draft.Email;
      fields[PHONE_FIELD.fieldApiName]=draft.Phone;
      return { fields };
    });

    const storeddata = recordInputs.map((recordInput) =>
      updateRecord(recordInput)
    );

    Promise.all(storeddata)
      .then(() => {
        alert('Records updated successfully');
        this.draftValues = [];
        return refreshApex(this.wiredConList);
      })
      .catch((error) => {
        alert('An error occurred while updating records: ' + error.body.message);
      });
  }
}