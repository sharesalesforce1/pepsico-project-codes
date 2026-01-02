import { LightningElement,api } from 'lwc';
export default class Pcalertcomponent extends LightningElement {
  @api message
  @api cardheading
  @api number
  @api isvalid
}