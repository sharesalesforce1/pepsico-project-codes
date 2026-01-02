import { LightningElement,api } from 'lwc';
export default class Ptocalertcomponent extends LightningElement {
  @api message
  @api cardheading
  @api number
  @api isvalid
}