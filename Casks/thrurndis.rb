cask "thrurndis" do
  version "0.4.1"
  sha256 "addf4be2091c179ee260752356275eb3906c310858244990f4060eabeda97100"

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
