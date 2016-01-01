# Code-Path-Simple-Tip-Calculator
CodePath Pre-Work

# Pre-work - *Tippy*

**Tippy** is a tip calculator application for iOS.

Submitted by: **Brian D. Hanson, Jr.**

Time spent: **60** hours spent in total

## User Stories

The following **required** functionality is complete:

* [*] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [*] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [*] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
- This app utilizes segmented controller as a display for each editable tip value!
- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![alt tag](https://cloud.githubusercontent.com/assets/16497737/12070142/e8c2be1e-b030-11e5-9fbc-db27e5f90a59.gif?raw=true)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

- The greatest challenge was learning how to directly access the NSUserDefaults that were store from the settings page. This data needed to be accessed on main ViewController in order to complete the update of segmented controller values for tips. 

- Another challenge was being able to programmatically access the titles of the segmented controller. I found this functionality was best implemented via a separate function.

- Another challenge was learning the newest changes of Xcode and the Swift Lamguage which invalidated the use of bridging to the Objective C Language. I attempted to apply this method of bridging to the Objective C Language for converting the string that is entered on Settings ViewController to the "double" data structure. I learned that NSString Class is the updated method that I used to in accessing the NSUserDefaults dictionary data entered from the Settings ViewController.

## License

    Copyright [2015] [Brian D. Hanson, Jr.]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
