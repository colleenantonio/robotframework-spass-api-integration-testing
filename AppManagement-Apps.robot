*** Settings ***
Library    Selenium2Library

*** Variables ***    
@{browsers}    Chrome    Firefox    Edge 
@{credentials}    adm.spass.srph@gmail.com    1q2w3e4R! 

*** Test Cases ***
NavigateToSamsungAccountLoginAdmin
    [Tags]    Regression: PASSPORTAL-1100
    Open Browser    https://dev-admin.samsungpass.com/#/login    ${browsers}[0]
    Set Browser Implicit Wait    10s 
    Click Button    id=loginSignInBtn    
    Sleep    2s
    Input Text    //*[@id="iptLgnPlnID"]    ${credentials}[0]
    Sleep    2s    .
    Input Text    //*[@id="iptLgnPlnPD"][1]    ${credentials}[1]    
    Sleep    2s    
    Click Button    id=signInButton        
    Sleep    2s    
    Close Browser






