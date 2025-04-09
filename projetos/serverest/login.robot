*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://front.serverest.dev/login
${BROWSER}  chrome

*** Test Cases ***
Login Test
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=email    horadoqa@teste.com
    Input Text      id=password    1q2w3e4r
    Click Button    //*[@id="root"]/div/div/form/button
    Wait Until Page Contains    Este é seu sistema para administrar seu ecommerce.    timeout=10s
    Close Browser