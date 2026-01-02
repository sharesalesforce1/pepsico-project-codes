import { LightningElement,api } from 'lwc';
import saveRecords from '@salesforce/apex/AccountContactController.saveRecords';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Navigationtarget extends LightningElement {
  @api accountData; // comes from accountScreen

    firstName; lastName; contactPhone; email;

    handleChange(event) {
        this[event.target.dataset.field] = event.target.value;
    }

    handleSubmit() {
        const payload = {
            accountData: this.accountData,
            contactData: {
                firstName: this.firstName,
                lastName: this.lastName,
                contactPhone: this.contactPhone,
                email: this.email
            }
        };

        saveRecords({ data: payload })
            .then(() => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Success',
                    message: 'Account & Contact created',
                    variant: 'success'
                }));
            })
            .catch(error => {
                this.dispatchEvent(new ShowToastEvent({
                    title: 'Error',
                    message: error.body.message,
                    variant: 'error'
                }));
            });
    }
}