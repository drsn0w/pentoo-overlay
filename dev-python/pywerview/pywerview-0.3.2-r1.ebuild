# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..9} )
inherit distutils-r1

DESCRIPTION="A Python port of PowerSploit's PowerView"
HOMEPAGE="https://github.com/the-useless-one/pywerview"
#SRC_URI="mirror://pypi/${PN::1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/the-useless-one/pywerview/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86"

RDEPEND="
	>=dev-python/impacket-0.9.22[${PYTHON_USEDEP}]
	dev-python/beautifulsoup4[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

#src_prepare() {
#	sed -i -e "/pycrypto/d" setup.py || die
#	default
#}
