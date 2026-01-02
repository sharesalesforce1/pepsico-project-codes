import { LightningElement } from 'lwc';
export default class Volchild extends LightningElement {
   
  handlevolincrease()
  {
     const inc = new CustomEvent('increase',{detail:'Volume increase'});
     this.dispatchEvent(inc);
  }

  handlevoldecrease()
  {
     const dec = new CustomEvent('decrease',{detail:'Volume decrease'});
     this.dispatchEvent(dec);
  }
}