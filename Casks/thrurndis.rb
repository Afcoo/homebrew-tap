cask "thrurndis" do
  version "0.2.0"
  sha256 "9b9e56657e81a8c8f91dc2ad4ca531916a0db090861e4fe2942216e345fd5e78"

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
