*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}  chrome
${baseUrl}   https://test.iddaa.com/giris-yap
${MainPage URL}  https://test.iddaa.com/


*** Keywords ***

Open Url
    open browser    ${baseUrl}  ${browser}
    Maximize Browser Window

Close Browser
    Close All Browsers

Enter phone number
     [Arguments]  ${phoneNumber}
     input text     id:10000    ${phoneNumber}

Enter password
     [Arguments]    ${password}
     input text     id:20000   ${password}

Click On Log In Button
     click element    css:button

Main Page Should Be Open
        Location Should Contain    ${MainPage URL}