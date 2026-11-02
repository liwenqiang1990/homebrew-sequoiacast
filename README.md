# SequoiaCast Homebrew tap

A community macOS 15 compatibility build of Tinycast v0.12.1 for Apple silicon. Source and validation: [liwenqiang1990/tinycast](https://github.com/liwenqiang1990/tinycast/tree/compat/v0.12.1-macos15-isolated).

```sh
brew install --cask liwenqiang1990/sequoiacast/sequoiacast
```

Quit SequoiaCast before updating:

```sh
brew update
brew upgrade --cask liwenqiang1990/sequoiacast/sequoiacast
```

The app is installed as `SequoiaCast.app`. In-app automatic updates remain disabled; Homebrew upgrades follow the version and SHA256 explicitly published in this tap. No upstream macOS 26 package is selected.

The app keeps the existing `org.sequoiacast.test` bundle ID, fixed signing certificate and storage locations so renamed builds reuse SequoiaCast Test data. The original Tinycast app and its `com.tinycast.*` data remain separate. Only one copy of the SequoiaCast channel should run at a time.

For a first installation after using `SequoiaCast Test.app`, quit that app first. After verifying SequoiaCast works, remove only the old application bundle; retain its data. If a manually installed `SequoiaCast.app` is already at the target location, move the bundle aside before the first brew installation. Do not use `--force` to replace an unknown app. A changed application path/name may require renewed permission approval.

This app is self-signed, not Apple Developer ID notarized. macOS may require approving it in System Settings → Privacy & Security. The cask does not disable security checks, remove quarantine, reset permissions, delete settings/history or terminate applications. The signing certificate retains its original name, `SequoiaCast Test Signing`, to preserve identity.

```sh
brew uninstall --cask liwenqiang1990/sequoiacast/sequoiacast
```

Uninstall removes the managed app bundle and preserves user settings/history. This tap intentionally has no `zap` stanza. Releases and tap updates are maintained manually; there are no publishing workflows.
