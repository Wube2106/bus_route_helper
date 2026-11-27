# Milestone 1 — Screens, Navigation and State

**Project:** Minibus and Anbessa Bus Route Helper
**Repository:** [https://github.com/Wube2106/bus_route_helper](https://github.com/Wube2106/bus_route_helper)
**Milestone:** 1
**Target tag:** `m1`
**Date:** 27 November 2026

## 1. What is done

The group has completed the main Milestone 1 requirements.

### Project structure

- Organized the application using a feature-first architecture.
- Created `lib/core` for shared application infrastructure.
- Organized features into `domain`, `data`, and `presentation` layers.
- Implemented six features: authentication, comparison, map, routes, saved routes, and search.

### Screens and navigation

- Implemented the home screen and route search.
- Implemented route results and route details.
- Implemented the map screen.
- Implemented route comparison and suggestions.
- Implemented sign-in and registration.
- Implemented saved routes.
- Connected the screens through GoRouter and application navigation.

### State management and data

- Used Riverpod providers for application state.
- Used Freezed models for relevant domain data.
- Implemented in-memory repositories behind repository interfaces.
- Kept the architecture ready for future integration with persistent and remote data sources.

### Testing and manual verification

- Added unit and widget tests covering application features.
- Manually tested the main application flows in Chrome:
  - Home screen and navigation.
  - Searching for routes and viewing results.
  - Opening route details and viewing the map.
  - Comparing routes and viewing suggestions.
  - Signing in, saving routes, opening saved routes, removing them, and signing out.

All five manual verification areas passed.

### Analyzer and automated tests

The following checks were run successfully:



**Analyzer command:**
```
flutter analyze --fatal-infos
```

**Output:**
```
No issues found!
```

**Test command:**
```
flutter test
```

**Output:**
```
00:09 +25: All tests passed!
```

## 2. What is not done

Milestone 1 deliverables are implemented and verified. The following items are planned for Milestone 2 or later and are not required deliverables for Milestone 1:

- Local data persistence across application restarts.
- Integration with the REST web service.
- Firebase Authentication and Cloud Firestore integration.
- Remote data loading, error, and empty states.
- Data-layer tests for the future remote and persistent repositories.

The current application uses in-memory data and does not claim permanent storage.

## 3. Pull request contributions

The following table records the group's merged pull requests and review contributions.

| Member                             | Pull requests authored                                                                                                           | Pull requests reviewed                                                                                                                        |
| ---------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| **Wubishet Yitayew** (`Wube2106`)  | #1 Foundation; #3 Home, Results and Details; #5 Suggestion Tie Handling; #7 Map Label Clipping Fix; #8 Journey and Compare Tests | #2 Compare and Route Data; #6 Saved Routes and Sign in                                                                                        |
| **Peter Manas Deng** (`peter3168`) | #4 Map View                                                                                                                      | #2 Compare and Route Data                                                                                                                     |
| **Mahder Hawaz** (`mahderhawaz`)   | #2 Compare and Route Data                                                                                                        | #1 Foundation; #3 Home, Results and Details; #4 Map View; #5 Suggestion Tie Handling; #7 Map Label Clipping Fix; #8 Journey and Compare Tests |
| **Mekrez Demeke** (`markad05`)     | #6 Saved Routes and Sign in                                                                                                      | No submitted review confirmed                                                                                                                 |

**Review record for PR #1:** Mahder Hawaz reviewed the foundation PR and posted an approval comment in the PR conversation before merging. The comment explicitly stated that the foundation PR had been reviewed against the Milestone 1 requirements and was approved. GitHub did not record this as a formal `APPROVED` review submission.



The other listed reviews are confirmed submitted GitHub reviews.

## 4. Group self-assessment

The group assessed its work against the Milestone 1 mini-rubric before tagging the milestone.

| Criterion                                                     | Available points | Self-score | Evidence                                                                                                                                        |
| ------------------------------------------------------------- | ---------------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| All proposed screens present and navigable                    | 3                | 3          | The main screens and user flows were implemented and manually verified in Chrome.                                                               |
| Feature-first structure; state in providers, not widgets      | 2                | 2          | The application uses `lib/core`, six feature modules, Riverpod providers, Freezed models, and in-memory repositories behind interfaces.         |
| Tests present; analyzer and tests clean                       | 1                | 1          | The full test suite passed 25 tests, and `flutter analyze --fatal-infos` reported no issues.                                                    |
| Repository hygiene: branches, pull requests, readable history | 1                | 1       | The group used feature branches, descriptive commits, and merged pull requests. |
| Individual oral check                                         | 3                | Pending    | The TA will assess each member individually after the milestone deadline.                                                                       |
| **Group self-score**                                          | **7**            | **7**    | **The individual oral check is assessed separately by the TA.**                                                                                 |

## 5. Planned change before Milestone 2

Before Milestone 2, the group plans to replace the current in-memory data sources with persistent and remote data sources. We will introduce local persistence and integrate the REST service and Firebase behind repository interfaces, with appropriate loading, error, and empty states.

## 6. Milestone 1 status

The group has completed the Milestone 1 implementation, automated checks, and manual Chrome verification. The project structure, navigation, state management, tests, and repository workflow have been reviewed against the Milestone 1 requirements.



The group is ready to submit Milestone 1 with the `m1` Git tag.
