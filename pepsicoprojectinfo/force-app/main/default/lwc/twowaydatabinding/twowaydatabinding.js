import { LightningElement,track } from 'lwc';

export default class Twowaydatabinding extends LightningElement 
{
    fullname='salesforce'
    title='lwc'

    changehandler(event)
    {
        this.fullname=event.target.value;
    }

    @track address={
        city:'melbourne',
        postalcode:533229,
        country:'Australia'
    }

    trackhandler(event)
    {
        this.address.city=event.target.value;
    }
}