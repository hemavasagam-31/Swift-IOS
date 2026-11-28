# Photography Gear & Lens Inventory App — Wipro Project 37

Native iPhone app, SwiftUI + MVVM + SwiftData, iOS 17+. No Studio Mode or workspace selection.

## Run on a Mac
1. Extract ZIP. Open PhotographyGear.xcodeproj in Xcode 15 or newer.
2. Select PhotographyGear scheme and an iPhone simulator, then Run (Cmd+R).
3. For a real iPhone choose your signing team under Signing & Capabilities; change bundle ID if needed.
4. Optional: regenerate the project with XcodeGen (`xcodegen generate`).

## First use
Tap Get Started; create a local account with an email and password of at least 8 characters. There is no server or email verification. On later launches enrolled device biometrics can unlock the local inventory; manual login is the fallback. The credential verifier is salted SHA-256 stored in device-only Keychain; this is a learning implementation, not a production password-hardening system. No recovery or cloud sync. Records start empty. Add equipment to populate the dashboard. The More tab provides logout.

## Learning order
App/PhotographyGearApp.swift -> AppRouter.swift -> RootView.swift -> Models -> Services -> ViewModels -> Components -> Views. Each feature is separated. SwiftData persists records locally. Category thumbnails are original illustrative icons, not photographs. Delete uses a native confirmation dialog.

## Review checklist (manual, pending Mac testing)
- Launch, create account, reject invalid email/short password, logout, reject wrong password, log in again.
- Enroll Face ID in simulator settings and test matching/nonmatching face and manual fallback; test Touch ID on supported hardware.
- Add gear with all fields; reject blank name/location. Check dashboard totals and recent list.
- Open gear details; edit location, notes and status; confirm counts update.
- Search name and notes; filter category and status; clear filters.
- Cancel deletion, then confirm deletion. Verify results and dashboard.
- Relaunch and verify records persist, login is required, portrait orientation and icon work.

## Validation status
Source syntax parsed with Linux Swift frontend where available; project structure generated and checked. Apple SwiftUI/SwiftData/LocalAuthentication frameworks and Xcode are unavailable in this environment. No iOS build, simulator or device test has been performed; compiler warnings and runtime behavior require verification on a Mac. The visual design uses native controls and purple styling inspired by the reference, not a pixel-perfect reproduction.
