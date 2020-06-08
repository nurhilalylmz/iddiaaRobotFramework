*** Settings ***

Resource  BaseMethods.robot

*** Test Cases ***
Login Test
  Open Url
  Enter phone number    05349199918
  Enter password    qwerty1
  Click On Log In Button
  Main Page Should Be Open
  Close Browser
