cask "thrurndis" do
  version "0.2.1"
  sha256 "ce2198c37d2bff01ff4ec119f6bb8e72397ee48b7826e1b52eacad994207dfc1"

  url "https://github.com/Afcoo/ThruRNDIS/releases/download/v#{version}/ThruRNDIS-#{version}.dmg"
  name "ThruRNDIS"
  desc "Android RNDIS USB tethering through a lightweight Linux VM"
  homepage "https://github.com/Afcoo/ThruRNDIS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "ThruRNDIS.app"

  uninstall quit: "com.afcoo.thrurndis"
end
