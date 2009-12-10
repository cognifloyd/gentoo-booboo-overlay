# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/qiv/qiv-2.0-r1.ebuild,v 1.3 2007/04/16 07:34:47 corsair Exp $

inherit eutils

MY_P="${P/_/-}"
#S="${WORKDIR}/${P%%_*}"
S="${WORKDIR}/$MY_P"
DESCRIPTION="Quick Image Viewer"
SRC_URI="http://spiegl.de/qiv/download/$MY_P.tgz"
HOMEPAGE="http://spiegl.de/qiv/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~alpha amd64 ~ppc ~ppc64 ~sparc x86"
IUSE=""

DEPEND="media-libs/libpng
	>=media-libs/tiff-3.5.5
	media-libs/imlib2
	>=x11-libs/libX11-1.0.0
	media-libs/libexif
	>=x11-libs/libXinerama-1.1
"

src_unpack() {
	unpack ${A}
	cd "${S}"
}

src_compile() {
	emake || die
}

src_install () {
	into /usr
	dobin qiv
	doman qiv.1
	dodoc README{,.TODO,.CHANGES}
}
