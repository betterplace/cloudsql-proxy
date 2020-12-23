# Changelog

## [1.20.0](https://www.github.com/betterplace/cloudsql-proxy/compare/v1.19.1...v1.20.0) (2020-12-23)


### Features

* Added DialContext to Client and proxy package ([#483](https://www.github.com/betterplace/cloudsql-proxy/issues/483)) ([c84aa50](https://www.github.com/betterplace/cloudsql-proxy/commit/c84aa5079668e07e3d2dc8f254d30e1103a6ead3))
* **containers:** Add "-alpine" and "-buster" based images.  ([#415](https://www.github.com/betterplace/cloudsql-proxy/issues/415)) ([ebcf294](https://www.github.com/betterplace/cloudsql-proxy/commit/ebcf294b9ee028340695868fb6f4cc4bbe09d849))
* **containers:** Add fuse to alpine and buster images ([#459](https://www.github.com/betterplace/cloudsql-proxy/issues/459)) ([0f28fcd](https://www.github.com/betterplace/cloudsql-proxy/commit/0f28fcd008a5bb863ec2ca1402c31ae81d7dae5d))


### Bug Fixes

* Add socket suffix for Postgres instances when running in `-fuse` mode ([#426](https://www.github.com/betterplace/cloudsql-proxy/issues/426)) ([20ffaec](https://www.github.com/betterplace/cloudsql-proxy/commit/20ffaec2f0f00a2516206a0453bd0d1c6e62770c))
* **container:** Specify nonroot user by uid to work with runAsNonRoot ([#402](https://www.github.com/betterplace/cloudsql-proxy/issues/402)) ([c5c0be1](https://www.github.com/betterplace/cloudsql-proxy/commit/c5c0be1b60bfc1c3fa862039619908a328066e5e))
* **docs:** Update helm chart URL ([#411](https://www.github.com/betterplace/cloudsql-proxy/issues/411)) ([60bab64](https://www.github.com/betterplace/cloudsql-proxy/commit/60bab6481d784761d0b8c36a0ee8b6d53db250f9))
* **examples:** Remove sidecar from no-proxy example. ([#410](https://www.github.com/betterplace/cloudsql-proxy/issues/410)) ([5f761d7](https://www.github.com/betterplace/cloudsql-proxy/commit/5f761d7ef539bfe4fb65c6856d439496cddbfcc7))
* **examples/k8s:** Make secret keys consistent ([#405](https://www.github.com/betterplace/cloudsql-proxy/issues/405)) ([54573d5](https://www.github.com/betterplace/cloudsql-proxy/commit/54573d521428a322f8049b117854987830fa082a))
* Prevent the binary from getting checked in when using go build ([#376](https://www.github.com/betterplace/cloudsql-proxy/issues/376)) ([886d9fc](https://www.github.com/betterplace/cloudsql-proxy/commit/886d9fc2a60744cc484a194a185260450765935e))
* Remove incorrect api base url from the host flag. ([#354](https://www.github.com/betterplace/cloudsql-proxy/issues/354)) ([887a30e](https://www.github.com/betterplace/cloudsql-proxy/commit/887a30e53f599db6cec6a781fd99960d76cc0ae0))


### Reverts

* Revert "Change imports for review" ([97f7803](https://www.github.com/betterplace/cloudsql-proxy/commit/97f7803a67d2e6afad0498a97b6ffea935d86220))

## [1.19.0](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/compare/v1.18.0...v1.19.0) (2020-11-02)


### Features

* Added DialContext to Client and proxy package ([#483](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/issues/483)) ([c84aa50](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/commit/c84aa5079668e07e3d2dc8f254d30e1103a6ead3))

## [1.18.0](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/compare/v1.17.0...v1.18.0) (2020-09-08)


### Features

* **containers:** Add "-alpine" and "-buster" based images.  ([#415](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/issues/415)) ([ebcf294](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/commit/ebcf294b9ee028340695868fb6f4cc4bbe09d849))
* **containers:** Add fuse to alpine and buster images ([#459](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/issues/459)) ([0f28fcd](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/commit/0f28fcd008a5bb863ec2ca1402c31ae81d7dae5d))


### Bug Fixes
* Print out any errors during SIGTERM-caused shutdown ([#389](https://github.com/GoogleCloudPlatform/cloudsql-proxy/pull/389))
* Optimize `-term-timeout` wait ([#391](https://github.com/GoogleCloudPlatform/cloudsql-proxy/pull/391))
* Add socket suffix for Postgres instances when running in `-fuse` mode ([#426](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/issues/426)) ([20ffaec](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/commit/20ffaec2f0f00a2516206a0453bd0d1c6e62770c))
* **containers:** Specify nonroot user by uid to work with runAsNonRoot ([#402](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/issues/402)) ([c5c0be1](https://www.github.com/GoogleCloudPlatform/cloudsql-proxy/commit/c5c0be1b60bfc1c3fa862039619908a328066e5e))
* Releases are now tagged using `vMAJOR.MINOR.PATCH` for correct compatibility with go-modules. Please note that this will effect container image tags (which were previously only `vMAJOR.MINOR`), since these tags correspond directly to the release on GitHub.
