import { LightningElement } from 'lwc';
import Aggrementsinfo from '@salesforce/contentAssetUrl/Aggrements';
import DESCRIPTION_ONE from '@salesforce/label/c.descriptionOne';
import DESCRIPTION_TWO from '@salesforce/label/c.descriptionTwo';
import ID from '@salesforce/user/Id';

export default class Contentassetfilesinfo extends LightningElement 
{
    LABELS ={
        descriptionOne:DESCRIPTION_ONE,
        descriptionTwo:DESCRIPTION_TWO
    }

    userId=ID
}