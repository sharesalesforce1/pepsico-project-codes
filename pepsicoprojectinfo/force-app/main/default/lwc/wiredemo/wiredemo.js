import { LightningElement, wire, track } from 'lwc';
import contactinfo from '@salesforce/apex/ContactDemo.getcontacts';

const columns = [
    { label: 'Id', fieldName: 'Id' },
    { label: 'First Name', fieldName: 'FirstName', type: 'text' },
    { label: 'Last Name', fieldName: 'LastName', type: 'text' }
];

const PAGE_SIZE = 5;

export default class Wiredemo extends LightningElement {
    columns = columns;
    @track allData = [];
    @track paginatedData = [];

    page = 1;
    totalPages = 0;

    @wire(contactinfo)
    wiredContacts({ error, data }) {
        if (data) {
            this.allData = data;
            this.totalPages = Math.ceil(this.allData.length / PAGE_SIZE);
            this.setPaginatedData();
        } else if (error) {
            console.error('Error fetching contacts:', error);
        }
    }

    setPaginatedData() {
        const start = (this.page - 1) * PAGE_SIZE;
        const end = start + PAGE_SIZE;
        this.paginatedData = this.allData.slice(start, end);
    }

    handleNext() {
        if (this.page < this.totalPages) {
            this.page++;
            this.setPaginatedData();
        }
    }

    handlePrevious() {
        if (this.page > 1) {
            this.page--;
            this.setPaginatedData();
        }
    }

    get isPreviousDisabled() {
        return this.page === 1;
    }

    get isNextDisabled() {
        return this.page === this.totalPages;
    }
}