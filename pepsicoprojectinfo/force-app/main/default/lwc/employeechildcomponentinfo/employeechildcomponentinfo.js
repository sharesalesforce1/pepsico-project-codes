import { LightningElement } from 'lwc';
export default class Employeechildcomponentinfo extends LightningElement {
    name;
    phone;
    city;

  empname(event)
  {
    this.name=event.target.value;
  }

  empphone(event)
  {
    this.phone=event.target.value;
  }

  empcity(event)
  {
    this.city=event.target.value;
  }

  empevent(event)
  {
    const event1 = new CustomEvent('employeedet',{detail:{enm:this.name,eph:this.phone,ecit:this.city}});
    this.dispatchEvent(event1);
  }
}