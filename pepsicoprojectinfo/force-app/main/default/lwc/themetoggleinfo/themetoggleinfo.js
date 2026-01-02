import { LightningElement,track } from 'lwc';
export default class Themetoggleinfo extends LightningElement {
   @track isDark = false;

    connectedCallback() {
        const savedTheme = localStorage.getItem('theme');
        if (savedTheme === 'dark') {
            this.isDark = true;
            this.applyTheme();
        }
    }

    toggleTheme() {
        this.isDark = !this.isDark;
        localStorage.setItem('theme', this.isDark ? 'dark' : 'light');
        this.applyTheme();
    }

    applyTheme() {
        const body = document.body;

        if (this.isDark) {
            body.classList.add('dark-theme');
            body.classList.remove('light-theme');
        } else {
            body.classList.add('light-theme');
            body.classList.remove('dark-theme');
        }
    }
}