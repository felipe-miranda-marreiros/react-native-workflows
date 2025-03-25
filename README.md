# REACT-NATIVE_WORKFLOWS

Workflows to build and upload to PlayStore using Github Actions.

### Requirements

- Google Developer Account.
- Upload Keystore.

### Dependencies

- Ruby
- Fastlane
- React Native
- GPG (or Base64)
- Github Actions
 
### Folder Structure

The Upload Keystore and Google Account JSON paths.

```
android/fastlane/keystore.jks
android/play-store-credentials.json
```

### Environmental Variables

```js
// Upload Keystore and Google Account
KEYSTORE
PLAYSTORE
ANDROID_STORE_PASSWORD
ANDROID_KEY_PASSWORD
ANDROID_KEY_ALIAS
```

```js
// GPG Keys
ANDROID_KEYSTORE_PASSPHRASE
ANDROID_PLAYSTORE_PASSPHRASE
```

### Android overview

![image](https://github.com/user-attachments/assets/a0865641-203e-4d1e-8020-0e4bd691ccae)

We can create flavors and lanes according to our project we are working on.

```ruby
 gradle(
      task: 'bundle',
      flavor: 'development',
      build_type: 'release',
    )
```

The flavor parameter must be the same name we defined in the `android/app/src`

### Github Actions
Each time we push a tag (for example, git tag 0.1.3), a new branch with the same git tag will be created (release/0.1.3).
![image](https://github.com/user-attachments/assets/3149741f-ab39-4d36-9a9b-07ed72630482)

## References
### App Resources

- https://progressier.com/pwa-screenshots-generator
- Google Play Store Template - https://www.figma.com/community/file/960064054935700100/google-play-store-template
- Template for stores. App Store. Google Play Market - https://www.figma.com/community/file/1048598786899116914

### PlayStore

- Publishing to Google Play Store: https://reactnative.dev/docs/signed-apk-android
- Sign your app: https://developer.android.com/studio/publish/app-signing
- Android App Bundle (AAB) and APKs: https://developer.android.com/guide/app-bundle/faq
- Gradle Manual: https://docs.gradle.org/current/userguide/userguide.html
- Android Gradle Plugin: https://developer.android.com/build/gradle-build-overview

### CI/CD

- Github Actions Runner Images: https://github.com/actions/runner-images
- Default environment variables: https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/store-information-in-variables#default-environment-variables
- Checkout action - Push a commit example: https://github.com/actions/checkout?tab=readme-ov-file#push-a-commit-using-the-built-in-token
- GitHub Actions bot user: https://api.github.com/users/github-actions%5Bbot%5D
- GitHub CLI create PR: https://cli.github.com/manual/gh_pr_create
- Using GitHub CLI in workflows: https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/using-github-cli-in-workflows
- About the GITHUB_TOKEN secret: https://docs.github.com/en/actions/security-for-github-actions/security-guides/automatic-token-authentication
- Using conditions to control job execution: https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/using-conditions-to-control-job-execution
- GitHub Expression - startsWith: https://docs.github.com/en/actions/writing-workflows/choosing-what-your-workflow-does/evaluate-expressions-in-workflows-and-actions#startswith
