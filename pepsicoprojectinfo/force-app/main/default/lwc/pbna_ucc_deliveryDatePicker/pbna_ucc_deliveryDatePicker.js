import { LightningElement,api } from 'lwc';
export default class Pbna_ucc_deliveryDatePicker extends LightningElement {
   @api recordId; // optional; unused here

  deliveryDate;
  minDate;
  maxDate;

  connectedCallback() {
    const today = new Date();
    this.minDate = this.formatDate(today);

    const sixWeeksLater = new Date();
    sixWeeksLater.setDate(sixWeeksLater.getDate() + 42);
    this.maxDate = this.formatDate(sixWeeksLater);
  }

  formatDate(dateObj) {
    const y = dateObj.getFullYear();
    const m = String(dateObj.getMonth() + 1).padStart(2, '0');
    const d = String(dateObj.getDate()).padStart(2, '0');
    return `${y}-${m}-${d}`;
  }

  handleDeliveryDateChange(event) {
    const input = event.target;
    const selectedDate = input.value;

    // clear previous error
    input.setCustomValidity('');

    // validations
    if (!selectedDate) {
      input.setCustomValidity('Please select a delivery date.');
    } else if (selectedDate < this.minDate) {
      input.setCustomValidity('Past dates are not allowed.');
    } else if (selectedDate > this.maxDate) {
      input.setCustomValidity('Date must be within 6 weeks from today.');
    }

    // show error (if any)
    input.reportValidity();

    // keep local value (even if invalid; parent can decide)
    this.deliveryDate = selectedDate;

    // optional: notify parent about the change + validity
    this.dispatchEvent(new CustomEvent('deliverydatechange', {
      detail: {
        value: this.deliveryDate,
        isValid: input.validationMessage === ''
      },
      bubbles: true,
      composed: true
    }));
  }

  // handy public method for parents to check validity on-demand
  @api reportValidity() {
    const input = this.template.querySelector('[data-id="deliveryDate"]');
    if (!input) return true;
    input.reportValidity();
    return input.validationMessage === '';
  }

  // optional setter if parent wants to preset the date
  @api set value(val) {
    this.deliveryDate = val;
  }
  get value() {
    return this.deliveryDate;
  }
}