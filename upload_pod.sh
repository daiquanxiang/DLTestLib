
#echo "${tagNum}"
#chmod 777 upload_pod.sh


#提交所有修改
git add .

git commit -m "edit"

git push -u origin master

#打tag
git tag -a 0.1.6 -m "tag release 0.1.6"

#上传
git push --tags

pod repo list

pod repo remove DLTestLib

pod repo add DLTestLib git@github.com:daiquanxiang/DLTestSpecs.git

#上传文件ß
#pod repo push WEHttpManager WEHttpManager.podspec --sources=git@120.26.233.28:WeSpec.git,http://git.wecut.com/WeSpec.git,https://github.com/CocoaPods/Specs.git --allow-warnings --verbose --use-libraries --skip-import-validation
pod repo push DLTestLib DLTestLib.podspec  --allow-warnings --verbose --use-libraries --skip-import-validation
