# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.19

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="NineP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="9P2000 in pure Haskell"
HOMEPAGE="http://9ph.googlecode.com"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5.0.2[profile?]
		>=dev-lang/ghc-6.10.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8.0.2"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	sed -i -e 's@^\({-# LANGUAGE \)@\1FlexibleInstances, @' src/Data/NineP.hs
}
