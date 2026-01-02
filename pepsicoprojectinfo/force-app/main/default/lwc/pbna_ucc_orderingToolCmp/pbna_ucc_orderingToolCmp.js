import { LightningElement,track } from 'lwc';
export default class Pbna_ucc_orderingToolCmp extends LightningElement {

    deliveryDate = '';
   handleDeliveryDateChange(event) {
    const { value, isValid } = event.detail || {};
    this.deliveryDate = value || '';
    this.isDeliveryDateValid = !!isValid;
    console.log('delivery date:',this.deliveryDate);
  }
}