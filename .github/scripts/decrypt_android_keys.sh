echo "$KEYSTORE" > keystore.asc 
gpg -d --passphrase="$ANDROID_KEYSTORE_PASSPHRASE" --batch keystore.asc  > android/fastlane/keystore.jks

echo "$PLAYSTORE" > play-store-credentials.json.asc 
gpg -d --passphrase="$ANDROID_PLAYSTORE_PASSPHRASE" --batch play-store-credentials.json.asc > android/play-store-credentials.json

rm keystore.asc
rm play-store-credentials.json.asc