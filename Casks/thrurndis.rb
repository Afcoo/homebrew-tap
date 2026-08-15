cask "thrurndis" do
  version "0.3.0"
  sha256 "3d4e80f6f322c1be2b220ae60d144db1fc1c92ff1d21b0b9540690f207d8afa9"

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
