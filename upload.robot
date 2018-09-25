***Settings***
Library     SeleniumLibrary

***Variable***
${url}          http://nervgh.github.io/pages/angular-file-upload/examples/simple/

***Keywords***
Select File
    [Arguments]         ${filename}
    Choose File
    ...     xpath://input[2]
    ...     ${CURDIR}/${filename}

Selected file should have 3 files
    Wait Until Page Contains Element
    ...     xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr
    Page Should Contain Element
    ...     xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr
    ...     limit=3

Upload File
    [Arguments]        ${order no}
    Click Element
    ...     xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[${order no}]/td[5]/button[1]

Upload Should Be Success
    Wait Until Page Contains Element
    ...     xpath://div[@style="width: 100%;"]

***Test Cases***
อัพโหลด
    Open Browser                ${url}           Chrome
    Maximize Browser Window 
    Select File                 loan.jpg
    Select File                 investment.jpg
    Select File                 account.jpg
    Selected file should have 3 files
    Upload File                 1
    Upload File                 2
    Upload File                 3
    Upload Should Be Success
    

