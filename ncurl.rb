class Ncurl < Formula
  include Language::Python::Virtualenv

  desc "Next generation of curl"
  homepage "ncurl.sh"
  url "https://files.pythonhosted.org/packages/5e/46/cb768a20424f02d36004615d7d4ae87eba64c3968302d8bde11be645b675/ncurl-0.3.0.tar.gz"
  sha256 "f4eef5a5d6d313beaaed22678d56f14b98006586f690ab28fced2b90ca81e29c"
  head "https://github.com/ncurl/ncurl.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "25f0e58f81a2cdd9cba772f07d67591533b4b31a2b970a356701aa046d4d9638" => :catalina
    sha256 "be158ebb4cfd327ebea02f7b8b8d63d093e474cd303eafff4a2b56b0611983a2" => :mojave
    sha256 "f331edb94183bfc5fa9de4b4abf148cc91a3a8b3c0e24cc1f5e6b0a4172dd34d" => :high_sierra
  end

  depends_on "python@3.8"

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/6e/4d/4d2fe93a35dfba417311a4ff627489a947b01dc0cc377a3673c00cf7e4b2/Pygments-2.6.1.tar.gz"
    sha256 "647344a061c249a3b74e230c739f434d7ea4d8b1d5f3721bc0f3558049b38f44"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/f5/4f/280162d4bd4d8aad241a21aecff7a6e46891b905a4341e7ab549ebaf7915/requests-2.23.0.tar.gz"
    sha256 "b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/b5/96/af1686ea8c1e503f4a81223d4a3410e7587fd52df03083de24161d0df7d4/setuptools-46.1.3.zip"
    sha256 "795e0475ba6cd7fa082b1ee6e90d552209995627a2a227a47c6ea93282f4bfb1"
  end

  def install
  	virtualenv_install_with_resources
  end

end
