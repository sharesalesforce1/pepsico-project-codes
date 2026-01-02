import { LightningElement } from 'lwc';
export default class Volparent extends LightningElement {
    vol=0
    cname='please click button to activate'

    handleincrease(event)
    {
       this.cname=event.detail;

       if(this.vol<100)
       {
        this.vol=this.vol+1;
       }
    }

    handledecrease(event)
    {
        this.cname=event.detail;
      if(this.vol>0)
      {
        this.vol=this.vol-1;
      }
    }
}