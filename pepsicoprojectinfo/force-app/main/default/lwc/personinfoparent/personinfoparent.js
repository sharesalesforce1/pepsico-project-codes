import { LightningElement } from 'lwc';
export default class Personinfoparent extends LightningElement {
  handlechange()
  {
     this.template.querySelector('c-personinfo').updateuser();
  }
}