run_all_in_parallel:
	make -j test_Samsung_Galaxy_S4_4.4 test_Google_Nexus_HD_10_4.4 test_LG_Nexus_4_4.4

test_Samsung_Galaxy_S4_4.4:
	deviceName="Samsung Galaxy S4 Emulator" platformVersion=4.4 pybot sample_test.robot

test_Google_Nexus_HD_10_4.4:
	deviceName="Google Nexus 7 HD Emulator" platformVersion=4.4 pybot sample_test.robot

test_LG_Nexus_4_4.4:
	deviceName="LG Nexus 4 Emulator" platformVersion=4.4 pybot sample_test.robot