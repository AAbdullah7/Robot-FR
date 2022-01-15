*** Settings ***
Library    SeleniumLibrary     

*** Variables ***
${url}         https://demo.nopcommerce.com    
${email}       A01cb@test.com
${password}    82645123

*** Keywords ***
RegisterKeys 
    Click Element    id=gender-male    
    Input Text       id=FirstName         Abdelrahman    
    Input Text       id=LastName          Abdullah
    Input Text       id=Email             ${email}
    Input Password   id=Password          ${password} 
    Input Password   id=ConfirmPassword   ${password}
    Click Button     id=register-button
    
LoginKeys
    Input Text       id=Email             ${email}
    Input Password   id=Password          ${password} 
    

*** Test Cases ***
    
RegisterTestCase
    [Documentation]    This is Test For Register Page 
    ...    
    Open Browser     ${url}   chrome
    Maximize Browser Window 
    Click Element    class=ico-register
    RegisterKeys    
    Close Browser          
    
*** Test Cases ***
LoginTestCase
   [Documentation]    This Is Test For Login
    
   Open Browser     ${url}       chrome
   Maximize Browser Window
   Click Element    class=ico-login    
   LoginKeys
   Click Button     class=button-1.login-button
   Close Browser    
   
   
    