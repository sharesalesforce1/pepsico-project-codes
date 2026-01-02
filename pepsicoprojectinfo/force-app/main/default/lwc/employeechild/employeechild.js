import { LightningElement } from 'lwc';
export default class Employeechild extends LightningElement {
  name;
  phone;
  city;

  empname(event)
  {
    this.name=event.target.value
  }
  empph(event)
  {
    this.phone=event.target.value
  }
  empcity(event)
  {
    this.city=event.target.value;
  }

  empevent()
  {
    const event = new CustomEvent('employeedet',{detail:{enm:this.name,eph:this.phone,ecit:this.city}});
    this.dispatchEvent(event);
  }
}