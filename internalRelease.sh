#!/bin/bash

#The script begins with inputing the appScheme , proposed version Number, username and App Specific Password. 
#The App specific password can be gotten from appleid.apple.com. This can be used in place of your team password.

echo "|________________________________________________|_"
echo "Welcome to Easy Test Flighting"
echo "Author : itoohue@gmail.com"
echo "|_________________________________________________|_"

read -p  "enter app scheme : `echo $'\n> '`" appScheme

read -p "Input new version number format x.y! or retain old version of same format! : `echo $'\n> '`" versionNumber

read -p read -p "Enter Username: `echo $'\n> '`"  Username 

read -p read -p "Enter App specific password: `echo $'\n> '`"  OTP  
echo updating version number..
agvtool new-marketing-version $versionNumber >>/dev/null #Updates Version Number to specific version format is versionnumber(buildnumber). 

echo Resetting build number to 1 for new release..
agvtool new-version -all 1 >>/dev/null
# agvtool next-version -all >>/dev/null increments build number to next highest integer. should be for updates.
fullversion="$(agvtool mvers -terse1)($(agvtool vers -terse))"

#Because of the massive ouptut to terminal, we can tidy things up by writing to a log file to monitor the process.

function build() {
xcodebuild -scheme $appScheme -configuration Debug -workspace $appScheme.xcworkspace/ build  >> logfile.txt
}

function archive() {
xcodebuild -scheme $appScheme -configuration Debug -workspace $appScheme.xcworkspace/ archive -archivePath $PWD/build/$appScheme.xcarchive >> logfile.txt #archive
}

function exportIPA() {
xcodebuild -exportArchive -archivePath $PWD/build/$appScheme.xcarchive -exportOptionsPlist OptionsPlist.plist -exportPath $PWD/build  >> logfile.txt
}

function upload() {
echo cleaning UploadTokens..
rm -rf /Library/Caches/com.apple.amp.itmstransporter/UploadTokens/*

/Applications/Xcode.app/Contents/Applications/Application\ Loader.app/Contents/Frameworks/ITunesSoftwareService.framework/Support/altool --upload-app -f $PWD/build/$appScheme.ipa -u $Username -p $OTP >> logfile.txt

}

echo building version $fullversion ..

if build; then echo build completed .
else echo Build failed..
fi

echo archiving version $fullversion ..

if archive; then echo archive completed .
else echo archive failed..
fi

echo exporting  IPA of  version $fullversion ..

if exportIPA; then echo  completed exporting IPA .
else echo export of IPA failed..
fi


if  upload; then  echo IPA file has been uploaded to TestFlight
else echo OOps an error occured, rerun script.
fi