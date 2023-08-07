let Browser = require('zombie')

const browser = new Browser()
browser.site = 'https://localhost:3000/'

const name = 'Polo'

browser.visit('/welcome', () =>{
    browser.assert.success()
    browser.assert.element('h2#question')

    browser.fill('#name', name)
    browser.pressButton('#submitname', () => {
        browser.assert.text('p#response', 'Welcome ' + name)
        console.log('All tests passed')
    })
})