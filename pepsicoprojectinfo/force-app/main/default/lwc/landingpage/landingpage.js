import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class LandingPage extends NavigationMixin(LightningElement) {
    features = [
        { id: 1, title: '10% Back', desc: 'On your first $50,000 in branded sales.' },
        { id: 2, title: '$200 Credit', desc: 'Towards fulfillment costs when using global shipping.' },
        { id: 3, title: 'Free Storage', desc: 'Auto-enrollment in the FBA Selection program.' },
        { id: 4, title: 'Launch Credits', desc: 'Earn up to $1000 in advertising credits.' }
    ];

    handleRegister() {
        // Redirect to a registration form or external link
        this[NavigationMixin.Navigate]({
            type: 'standard__webPage',
            attributes: {
                url: '/registration-form'
            }
        });
    }
}