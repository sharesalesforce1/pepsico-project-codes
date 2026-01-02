import { LightningElement,track } from 'lwc';
const columns=[
  {label:'Employee name',fieldName:'enm',type:'text'},
  {label:'Employee phone',fieldName:'eph',type:'phone'},
  {label:'Employee city',fieldName:'ect',type:'text'}
]
export default class Employeeparent extends LightningElement {
    @track empname;
    @track empphone;
    @track empcity;
    @track empdetails=[];
    columns=columns

  handleevent(event)
  {
     this.empname=event.detail.enm;
     this.empphone=event.detail.eph;
     this.empcity=event.detail.ecit;

     this.empdetails=[{
        enm:this.empname,eph:this.empphone,ect:this.empcity
     }]
  }
}