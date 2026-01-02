import { LightningElement } from 'lwc';
import DESCRIPTION_ONE from '@salesforce/label/c.descriptionOne'
import DESCRIPTION_TWO from '@salesforce/label/c.descriptionTwo'
export default class CustomLabelsdemo extends LightningElement 
{
  LABELS={
    descriptionone:DESCRIPTION_ONE,
    descriptiontwo:DESCRIPTION_TWO
  }
}