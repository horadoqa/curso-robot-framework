*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://front.serverest.dev/cadastrarusuarios
${BROWSER}  chrome

*** Test Cases ***
Login Test
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=nome    Hora do QA
    Input Text      id=email    horadoqa3@teste.com
    Input Text      id=password    1q2w3e4r
    Click Button    id=administrador
    Click Button    //*[@id="root"]/div/div/form/div[5]/button
    Wait Until Page Contains    Este é seu sistema para administrar seu ecommerce.    timeout=10s
    Close Browser