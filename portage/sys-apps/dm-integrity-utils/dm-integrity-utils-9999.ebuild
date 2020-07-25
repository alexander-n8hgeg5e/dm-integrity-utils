# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6


PYTHON_COMPAT=( python3_6 )
EGIT_REPO_URI="${CODEDIR}/${PN} ${MYGITHUB_URIBASE}${PN}.git"
inherit git-r3 distutils-r1 scons-utils

DESCRIPTION="tools to manage device-mapper integrity target"
HOMEPAGE=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND} sys-fs/lvm2"

src_compile(){
	escons
	default_src_compile
}

src_install(){
	dosbin dump-integrity-header-info
	dosbin dm-integrity-setup
}
