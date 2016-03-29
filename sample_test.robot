*** Settings ***

Library  AppiumLibrary
Library  SauceLabs.py

Test Setup  Open test application
Test Teardown  Close test application
 
*** Variables *** 	
${KEY}                  %{SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}
${REMOTE_URL}           http://${KEY}@ondemand.saucelabs.com:80/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     %{platformVersion}
${DEVICE_NAME}          %{deviceName}
${APP}                  http://saucelabs.com/example_files/ContactManager.apk
${DEVICE_ORIENTATION}   portrait
${APPIUM_VERSION}		1.5



*** Test Cases ***
Example of connecting to Sauce via Robot Framework
	
	Click element  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.LinearLayout[1]/android.widget.Button[1]
	
	Input text  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.TableLayout[1]/android.widget.TableRow[4]/android.widget.EditText[1]  My Name
	
	Input text  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.TableLayout[1]/android.widget.TableRow[8]/android.widget.EditText[1]  myemail@email.com

	Click element  xpath=//android.widget.LinearLayout[1]/android.widget.FrameLayout[2]/android.widget.ScrollView[1]/android.widget.TableLayout[1]/android.widget.TableRow[9]/android.widget.Button[1]

*** Keywords ***
Open test application
    Open application  ${REMOTE_URL}  alias=None  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICE_NAME}  deviceOrientation=${DEVICE_ORIENTATION}  appiumVersion=${APPIUM_VERSION}  app=${APP}  name=RobotAppiumAndroid  

Close test application
    Report Sauce status  ${SUITE_NAME} | ${TEST_NAME}  ${TEST_STATUS} 
    Close all applications

