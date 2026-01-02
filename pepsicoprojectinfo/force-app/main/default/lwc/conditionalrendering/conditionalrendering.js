import { LightningElement } from 'lwc';
export default class Conditionalrendering extends LightningElement {
    isdeclared=false
  showinfo()
  {
    this.isdeclared=true
  }
}