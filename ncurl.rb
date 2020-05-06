class Ncurl < Formula
  include Language::Python::Virtualenv

  desc "Next generation of curl"
  homepage "ncurl.sh"
  url "https://files.pythonhosted.org/packages/5e/46/cb768a20424f02d36004615d7d4ae87eba64c3968302d8bde11be645b675/ncurl-0.3.0.tar.gz"
  sha256 "f4eef5a5d6d313beaaed22678d56f14b98006586f690ab28fced2b90ca81e29c"
  head "https://github.com/ncurl/ncurl.git"

  depends_on "python@3.8"

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/6e/4d/4d2fe93a35dfba417311a4ff627489a947b01dc0cc377a3673c00cf7e4b2/Pygments-2.6.1.tar.gz"
    sha256 "647344a061c249a3b74e230c739f434d7ea4d8b1d5f3721bc0f3558049b38f44"
  end

  resource "uncurl" do
    url "https://files.pythonhosted.org/packages/34/bd/d2ea420b17029179a31ab06d2373e0399e6b43c40f8178c781035117da28/uncurl-0.0.10.tar.gz"
    sha256 "636ee68d7d837cadb2d6c50f1d47de4053c8701b969cbea87654d89edb3e79a6"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/f5/4f/280162d4bd4d8aad241a21aecff7a6e46891b905a4341e7ab549ebaf7915/requests-2.23.0.tar.gz"
    sha256 "b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/b5/96/af1686ea8c1e503f4a81223d4a3410e7587fd52df03083de24161d0df7d4/setuptools-46.1.3.zip"
    sha256 "795e0475ba6cd7fa082b1ee6e90d552209995627a2a227a47c6ea93282f4bfb1"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/b8/e2/a3a86a67c3fc8249ed305fc7b7d290ebe5e4d46ad45573884761ef4dea7b/certifi-2020.4.5.1.tar.gz"
    sha256 "51fcb31174be6e6664c5f69e3e1691a2d72a1a12e90f872cbdb1567eb47b6519"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/05/8c/40cd6949373e23081b3ea20d5594ae523e681b6f472e600fbc95ed046a36/urllib3-1.25.9.tar.gz"
    sha256 "3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/cb/19/57503b5de719ee45e83472f339f617b0c01ad75cba44aba1e4c97c2b0abd/idna-2.9.tar.gz"
    sha256 "7588d1c14ae4c77d74036e8c22ff447b26d0fde8f007354fd48a7814db15b7cb"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  def install
  	virtualenv_install_with_resources
  end

end
