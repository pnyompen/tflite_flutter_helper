# [0.4.0] - Dependency Modernization
* Remove `quiver` dependency — use `SupportPreconditions` and `Object.hash()` instead.
* Remove `tuple` dependency — use Dart 3 records instead.
* Require Dart >=3.0.0 and Flutter >=3.10.0.
* Update dependencies: meta ^1.15.0, path_provider ^2.1.0, tflite_flutter ^0.12.0, camera ^0.11.0, ffi ^2.1.0, image ^4.5.0.
* Fix `SupportPreconditions.checkState` bug (was passing `expression` instead of `message`).
* Android: compileSdk 35, Gradle 8.10.2.
* iOS minimum deployment target 12.0, macOS minimum 10.15.
* Add `final` modifier to FFI struct/opaque classes for Dart 3 compatibility.
* CI: update GitHub Actions to latest versions (checkout@v4, setup-java@v4, flutter-action@v2).

# [0.3.0] - Audio Support and Task Library
* Added support for audio-cases.
* Task Library for Text based applications.

# [0.2.2] - Image Package Update
* Update Image APIs.

# [0.2.1] - TFLite Flutter dependency update

* Updated to tflite_flutter: ^0.9.0

# [0.2.0] - Migrate to null-safety
* Stable null-safety
* Depends on tflite_flutter: ^0.8.0
* Custom Crop position in ResizeWithCropOrPad

# [0.1.2] - BoundingBox bfix

* Fixed bounding box orderedValues

# [0.1.1] - TFLite Flutter dependency update

* Updated to tflite_flutter: ^0.5.0

# [0.1.0] - TFLite Flutter Helper

* Initial release.
