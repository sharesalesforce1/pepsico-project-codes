import { LightningElement } from 'lwc';
export default class Personparent extends LightningElement {
  clickhere()
  {
    this.template.querySelector('c-person').clickme();
  }
}