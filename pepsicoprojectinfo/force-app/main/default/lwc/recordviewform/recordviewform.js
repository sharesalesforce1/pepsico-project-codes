import { LightningElement,api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import FAX_FIELD from '@salesforce/schema/Account.Fax';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import ACTIVE_FIELD from '@salesforce/schema/Account.Active__c';

export default class Recordviewform extends LightningElement {
  @api recordId;
  objectApiName="Account"

  fields={
    name:NAME_FIELD,
    phone:PHONE_FIELD,
    industry:INDUSTRY_FIELD,
    annualrevenuefield:ANNUALREVENUE_FIELD,
    faxField:FAX_FIELD,
    websiteField:WEBSITE_FIELD,
    activeField:ACTIVE_FIELD
  }
}