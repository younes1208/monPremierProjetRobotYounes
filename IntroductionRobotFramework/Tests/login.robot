*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
loginTest
    [Documentation]    ceci est un test de login\logout
    Open Browser   ${URL}    ${Browser}    
  Maximize Browser Window
  Input Text    id=txtUsername    &{dataLogin}[key1]                                       #@{logins}[0]
  Input Password    id=txtPassword    &{dataLogin}[key2]                                   # @{logins}[1]   
  Click Button    id=btnLogin 
  Click Element    id=welcome  
  Set Browser Implicit Wait    5
  Click Element    link=Logout
  Log    ceci_est_un_test_execute_par %{userName} dans %{os}
 # Log    %{os}   
   log    ceci est simple test   
  Log    fin de test, aurevoir 
  
*** Variables ***
#variables scalaire juste une valeur
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Browser}    gc 
#variables list (plusieurs valeurs)
@{logins}    Admin     admin123  
#variable dictionnaire
&{dataLogin}     key1=Admin    key2=admin123
 