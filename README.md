# yandexmapsspm
SPM support for YandexMapsMobile

How to update:
1) Find archive link for desirable version of YandexMapsMobile at [CocoaPods repo](https://github.com/CocoaPods/Specs/tree/master/Specs/d/d/0/YandexMapsMobile)
2) Download archive
3) Compute checksum for archive
```sh
swift package compute-checksum ../path/to/archive.zip
```
4) Update Package.swift with archive link and checksum
