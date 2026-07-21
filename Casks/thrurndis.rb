cask "thrurndis" do
  version "0.2.0"
  sha256 "cbb26b13e024805f273ad73f78fa2864ab08e2ce6f73ef624a6f1444ae7bc71d"

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
