import { LightningElement,wire } from 'lwc';
import getconrecords from '@salesforce/apex/ContactDemoinfo.getcontacts'
export default class Wiredemoinfo extends LightningElement {
      columns = [
        { label: 'Contact ID', fieldName: 'Id' },
        { label: 'First Name', fieldName: 'FirstName' },
        { label: 'Last Name', fieldName: 'LastName' }
    ];
  @wire(getconrecords)coninfo; //@wire(methodname)referencename;
}