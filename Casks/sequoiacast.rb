cask "sequoiacast" do
  version "0.12.1-sequoia.3"
  sha256 "560f66455acd624e3568cdab3d697a65bbef44547c2d1109d4e0280fd2757abe"

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
