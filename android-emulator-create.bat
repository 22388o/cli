@echo off

avdmanager.bat create avd --name Pixel_Android_11_API_29 --package "system-images;android-29;google_apis_playstore;x86" --tag "google_apis_playstore" --abi "x86" --device "pixel"
