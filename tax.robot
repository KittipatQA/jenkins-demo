***Settings***
Library     SeleniumLibrary

***Variable***
${url}          https://rdserver.rd.go.th/publish/index.php
${menu}         //a[contains(text(),'ยื่นแบบออนไลน์')]
${close}        //button[contains(text(),'.')]
${click}        //a[@href="https://rdserver.rd.go.th/publish/index.php?page=taxonline"]

***Keywords***
Window
    Select Window
    Click Element               xpath://*[@id="lightboxdialog"]/p/iframe       
Bypass
    Select Frame                xpath://*[@id="lightboxdialog"]/p/iframe
    Click Link                  คลิก
***Test Cases***
ยื่นแบบออนไลน์
    Open Browser                ${url}           Chrome
    Maximize Browser Window 
    Click Element               ${menu} 
    Bypass
    Window
    Click Element               ${close}              