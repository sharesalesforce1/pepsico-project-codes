import { LightningElement } from 'lwc';
export default class Volinfochild extends LightningElement {
   increasehandler(event)
   {
      const inc = new CustomEvent('increase',{detail:'volume increase'})
      this.dispatchEvent(inc);
   }

   decreasehandler(event)
   {
      const dec = new CustomEvent('decrease',{detail:'volume decrease'})
      this.dispatchEvent(dec);
   }
}