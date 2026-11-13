cask "sequoiacast" do
  version "0.12.11-sequoia.1"
  sha256 "fd791c26e8e28a0487ac0837300484903a3725cf26700263b612b7f527173e1f"

  url "https://github.com/liwenqiang1990/tinycast/releases/download/v#{version}/SequoiaCast-#{version}-macos15-arm64.zip"
  name "SequoiaCast"
  desc "Native launcher with clipboard, snippets and extensions"
  homepage "https://github.com/liwenqiang1990/tinycast"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SequoiaCast.app"

  caveats <<~EOS
    Quit SequoiaCast before upgrading. Its org.sequoiacast.test identity and data
    are shared with the earlier SequoiaCast Test builds; run only one copy.
    This application is self-signed and not notarized. macOS may require
    approval in System Settings > Privacy & Security on first launch.
  EOS
end
