*** Settings ***
Library  Selenium2Library
Suite Setup    open browser      ${HOMEPAGE}     ${BROWSER}
Test Setup    go to    ${HOMEPAGE}
Suite Teardown  close all browsers
Documentation  Demonstrate Selenium2Library by googling.

*** Variables ***
${HOMEPAGE}     http://www.google.com
${BROWSER}      firefox

*** Test Cases ***
Google searches and verifying results
    [Tags]      templated-tests
    [Template]    Google and check results
    devops      devops.com
    deveo       deveo.com
    robot framework     robotframework.org
Google devops and find eficode
    [Tags]      devops      eficode     smoke
    Google and check results    devops    devops.com/

Google deveo and find its web site
    [Tags]      devops      eficode
    Google and check results    deveo       deveo.com

Google and check results
    [Tags]      robot
    Google and check results    robot framework     robotframework.orgmnmn

*** Keywords ***
Google and check results
    [Arguments]     ${searchkey}    ${result}
    input text     id=gbqfq    ${searchkey}
    click button      id=gbqfb
    wait until page contains    ${result}


