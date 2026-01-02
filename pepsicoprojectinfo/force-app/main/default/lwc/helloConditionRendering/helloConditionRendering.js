import { LightningElement } from 'lwc';

export default class HelloConditionRendering extends LightningElement {
    isdeclared=false

    handleme()
    {
        this.isdeclared=true
    }
}