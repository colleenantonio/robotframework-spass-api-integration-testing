*** Settings ***
Library    Selenium2Library
Default Tags    Smoke

*** Variables ***    
@{browsers}    Chrome    Firefox    Edge 
@{credentials}    adm.spass.srph@gmail.com    1q2w3e4R!     
# Global Variables 

*** Test Cases ***
AppsList
    [Tags]    RegressionTest [PASSPORTAL-1100]
    Open Browser    https://dev-admin.samsungpass.com/#/    ${browsers}[0]
    Maximize Browser Window
    Set Browser Implicit Wait    10s 
    Sleep    2s
    
    # Verify proper navigation to App Management
    # Verify Header "Apps"
    Wait Until Element Is Visible    id=lnbAppManagementLink    # Apps tab
    Click Element    id=lnbAppManagementLink
    Title Should Be    Samsung Pass
    Page Should Contain    Apps
    Sleep    3s
        
    # Verify the contents of the list with correct column headers
    Page Should Contain    Version
    Page Should Contain    Activation    
    Page Should Contain    Forced Update    
    Page Should Contain    Updated Date    
    Page Should Contain    Deleted    
    Page Should Contain    Status   
    Sleep    3s
    
    # Verify the Filters Panel contents
    Page Should Contain    Activation    
    Page Should Contain    Forced Update    
    Page Should Contain    Status    
    Page Should Contain    Deleted    
    Page Should Contain    From    
    Page Should Contain    To
    Sleep    3s 
     
    # Verify Search function for existing Version
    # Verify Apply button function
    # Verify Clear All button function
    Wait Until Element Is Visible    //input[@placeholder='Search version']    
    Input Text    //input[@placeholder='Search version']    11.11.11.11
    Click Element    //button[@class='css-doaywb']    # Apply button
    Sleep    2s
    Capture Page Screenshot     
    Click Element    //button[@id='spassAppsFilterClearBtn']    # Clear All button  
    Sleep    5s
    
    # Verify Search function for non-existing Version
    # Verify Apply button function
    # Verify Clear All button function
    Wait Until Element Is Visible    //input[@placeholder='Search version']
    Input Text    //input[@placeholder='Search version']    123456789
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    No Results Found
    Sleep    2s   
    Capture Page Screenshot
    Click Element    //button[@id='spassAppsFilterClearBtn']    # Clear All button
    Sleep    5s

    # Verify filter functionality for Activation
    # Verify Apply button function
    # Verify Clear All button function
    # Verify Pagination for "Apps" page
    Click Element    //span[contains(text(),'Activation')]    # (//*[text()='Activation'])[1]
    Sleep    2s
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'All')]    # //*[@id="undefined_0"]    
    Sleep    2s
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Active
    Page Should Contain    Inactive   
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    # Next pagination
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[contains(text(),'Activation')] 
    Sleep    2s
    Click Element    //button[contains(text(),'Active')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Active
    Capture Page Screenshot  
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[contains(text(),'Activation')] 
    Sleep    2s
    Click Element    //button[contains(text(),'Inactive')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Inactive
    Capture Page Screenshot  
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    # Verify filter functionality for Forced Update
    # Verify Apply button function
    # Verify Clear All button function
    # Verify Pagination for "Apps" page
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Forced Update')]
    Sleep    2s  
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'All')] 
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Yes
    Page Should Contain    No
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Forced Update')]
    Sleep    2s  
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'Yes')] 
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Yes   
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Forced Update')]
    Sleep    2s  
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'No')] 
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    No  
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s

    # Verify filter functionality for Status
    # Verify Apply button function
    # Verify Clear All button function
    # Verify Pagination for "Apps" page
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Status')]
    Sleep    2s
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'All')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Approving
    Page Should Contain    Approved    
    Page Should Contain    Rejected    
    Capture Page Screenshot
    Sleep    2s   
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    # Verify filter functionality for Status
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Status')]
    Sleep    2s
    Click Element    //button[contains(text(),'Approving')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Approving   
    Capture Page Screenshot
    Sleep    2s   
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Status')]
    Sleep    2s
    Click Element    //button[contains(text(),'Approved')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Approved   
    Capture Page Screenshot
    Sleep    2s   
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Status')]
    Sleep    2s
    Click Element    //button[contains(text(),'Rejected')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Rejected   
    Capture Page Screenshot
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Scroll Element Into View    //button[@class='css-ab32j2'][contains(text(),'30')]
    Wait Until Page Contains Element    //button[@class='css-ab32j2'][contains(text(),'30')]        # when elementnotinteractableexception message element not interactable error occurs
    Sleep    2s
    Wait Until Element Is Enabled    //button[@class='css-ab32j2'][contains(text(),'30')]    # when elementnotinteractableexception message element not interactable error occurs
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]
    Sleep    2s  
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
  
    # Verify filter functionality for Deleted
    # Verify Apply button function
    # Verify Clear All button function
    # Verify Pagination for "Apps" page
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Deleted')]
    Sleep    2s
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'All')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    Yes    
    Page Should Contain    No
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    Click Element    //span[@class='css-vcw0sj'][contains(text(),'Deleted')]
    Sleep    2s
    Click Element    //div[@class='css-1j14ri1']//div//button[contains(text(),'No')]
    Sleep    2s    
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    No    
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'30')]  
    Sleep    2s      
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Sleep    2s  
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Reload Page
    Sleep    5s
    
    # Verifty filter functionality for From and To Date
    # Verify Apply button function
    # Verify Clear All button function
    Click Element    //*[@class='css-1gg9gay']//*[contains(text(),'From')]
    Sleep    2s
    Wait Until Page Contains    July 2020     
    Sleep    2s   
    Click Element    //div[@class='react-datepicker__day react-datepicker__day--001']    
    Sleep    2s
    Click Element    //*[@class='css-1gg9gay']//*[contains(text(),'To')]
    Sleep    2s
    Wait Until Page Contains    July 2020
    Sleep    2s   
    Click Element    //div[@class='react-datepicker__day react-datepicker__day--028 react-datepicker__day--today']
    Sleep    2s
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    2020-07
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Sleep    5s    
        
    # Verify filter functionality when one date is only given
    # Verify Apply button function
    # Verify Clear All button function
    Click Element    //*[@class='css-1gg9gay']//*[contains(text(),'From')]
    Sleep    2s
    Wait Until Page Contains    July 2020     
    Sleep    2s   
    Click Element    //div[@class='react-datepicker__day react-datepicker__day--001']    
    Sleep    2s
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    2020-07
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']     
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Sleep    5s
    
    Click Element    //*[@class='css-1gg9gay']//*[contains(text(),'To')]
    Sleep    2s
    Wait Until Page Contains    July 2020
    Sleep    2s   
    Click Element    //div[@class='react-datepicker__day react-datepicker__day--015']
    Sleep    2s
    Click Element    //button[@class='css-doaywb']
    Page Should Contain    2020-07-15
    Sleep    2s
    Wait Until Element Is Visible    //*[@class='css-1vwly8k']
    Capture Page Screenshot
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //li[@class='rc-pagination-next']//div[@id='iconButtonComponent']//*[local-name()='svg']    
    Sleep    2s
    Click Element    //button[@class='css-1hyd4x5']    
    Sleep    2s
    Click Element    //button[@class='css-ab32j2'][contains(text(),'20')]    
    Sleep    2s
    Click Element    //button[@id='spassAppsFilterClearBtn']
    Sleep    5s    
    
    Log To Console    %{username} ran this test on %{os}. Test Execution completed with no errors.
    Close Window

   
    