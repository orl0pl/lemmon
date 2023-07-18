<div align="center">

[![ci](https://github.com/orl0pl/lemmon/actions/workflows/main.yml/badge.svg)](https://github.com/orl0pl/lemmon/actions/workflows/main.yml)


<img width=200px height=200px src="https://raw.githubusercontent.com/orl0pl/lemmon/master/assets/app_icon.png"/>

# Lemmon

[<img src="https://raw.githubusercontent.com/andOTP/andOTP/master/assets/badges/get-it-on-github.png" height="80">](https://github.com/orl0pl/lemmon/releases/latest)

A fresh mobile client for [Lemmy](https://github.com/LemmyNet/lemmy) - a federated reddit alternative
</div>

## Screenshots

| Home      | Search |
| ----------- | ----------- |
| ![Home screenshot](https://raw.githubusercontent.com/orl0pl/lemmon/7ef45adc754a2357b317d125e0ee666d0c094f78/screenshots/homegreen.jpeg)  | ![Search screenshot](https://raw.githubusercontent.com/orl0pl/lemmon/7ef45adc754a2357b317d125e0ee666d0c094f78/screenshots/searchgreen.jpeg) |

- [🍋 Lemmon](#lemmon)
  - [Screenshots](#screenshots)
- [Contributing](#contributing)
  - [Build from source](#build-from-source)
    - [Prerequisites](#prerequisites)
    - [iOS](#ios)
    - [Android](#android)
    - [Linux](#linux)
    - [Windows](#windows)
  - [FAQ](#faq)
    - [Version x.x.x was released, why is it not yet on F-droid?](#version-xxx-was-released-why-is-it-not-yet-on-f-droid)
    - ["App not installed" - what to do?](#app-not-installed---what-to-do)
- [What is your privacy policy?](#what-is-your-privacy-policy)
- [End User Code of Conduct](#end-user-code-of-conduct)

# Contributing

Please consider contributing! Even if you don't know flutter well use this as a chance to learn! [Contributing Guide](CONTRIBUTING.md)


## Build from source

### Prerequisites

- Install [flutter](https://flutter.dev/docs/get-started/install): To check if this step was successful run `flutter doctor` (Installing android studio is not required if you setup the android SDK yourself)
- Clone this repo: `git clone https://github.com/orl0pl/lemmon`
- Enter the repo: `cd lemmon`

### Android

1. Build: `flutter build apk --flavor prod --target lib/main_prod.dart --release`

The apk will be in `build/app/outputs/flutter-apk/app-prod-release.apk`


## FAQ

### "App not installed" - what to do?

When installing the APK directly you might get this message. This happens when you are trying to update lemmon from a different source than where you originally got it from. To fix it simply uninstall the previous version (you will lose all local data) and then install the new one. Always make sure to install lemmon APKs only from verified sources.

# What is your privacy policy?

As stated in our [Privacy Policy statement](PRIVACY_POLICY.md), we don't have access to any of your personal data or usage information from your device.

# End User Code of Conduct

We want Lemmon! to be a fresh way of interacting with the Lemmy network in a safe manner, so end-users of the packages that we produce and distribute are required to read and follow our [End User Code of Conduct](CODE_OF_CONDUCT.md).