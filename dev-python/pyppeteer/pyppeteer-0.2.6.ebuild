# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=pyproject.toml
PYTHON_COMPAT=( python3_{8..9} )

inherit distutils-r1

DESCRIPTION="Headless chrome/chromium automation library "
HOMEPAGE="https://github.com/pyppeteer/pyppeteer https://pypi.org/project/pyppeteer/"
#SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/pyppeteer/pyppeteer/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
IUSE="test"

RDEPEND="
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyee[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/websockets[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

src_prepare(){
	sed -i '/^exclude = \[/,/^\]$/d' pyproject.toml
	eapply_user
}
