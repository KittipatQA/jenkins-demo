*** Settings ***
Library  CsvLibrary.py

*** Test Cases ***
Try to write dictionary data to csv file    
        [Tags]        dev
        &{user_info}=  Create Dictionary
        ...     email=somkiat@gmail.com
        ...     mobile_no=083123123123
        @{all data}=    Create List
        ...  ${user_info}
        ...  ${user_info}
        Write Data      ${all data}





# Try to write dictionary data to csv file
#         [Tags]         testing
#        &{user_info}=   Create Dictionary
#        ...	           email=somkiat@gmail.com
#        ...             mobile_no=091312312312
#        Write Data      ${user_info}

Try to read from user.csv with for loop

    ${users}=   Read Data       user.Csv
    :FOR  ${data}  IN  @{users}
    \  Log to console      ${data[0]}=${data[1]}

Try to read from user.csv
    ${users}=   Read Data       user.Csv
    Log to console      User=${users[0][0]}    
    Log to console      Password=${users[0][1]}    