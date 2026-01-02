import { LightningElement } from 'lwc';
export default class IncentivesHero extends LightningElement {
  regions = [
        {
            name: 'North America',
            countries: 'The US, Canada, and Mexico',
            description: 'Make the most of the expanding export trade between India and developed countries.',
            bgStyle: 'background-image: url("/resource/NA_Map")'
        },
        {
            name: 'Europe',
            countries: 'Germany, UK, France, Italy...',
            description: 'With just 1 account, reach customers across different European stores.',
            bgStyle: 'background-image: url("/resource/EU_Map")'
        }
        // Add other regions here...
    ];
}