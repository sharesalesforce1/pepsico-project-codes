import { LightningElement } from 'lwc';
import signinTemplate from './signinTemplate.html';
import signupTemplate from './signupTemplate.html';
import renderTemplate from './rendermethod.html';

export default class Rendermethod extends LightningElement 
{
  selectedBtn='' //Signup Signin

  render()
  {
    return this.selectedBtn == 'Signup' ? signupTemplate :
    this.selectedBtn == 'Signin' ? signinTemplate : renderTemplate;
  }

  handleclick(event)
  {
    this.selectedBtn = event.target.label
  }

  submithandler()
  {

  }
}