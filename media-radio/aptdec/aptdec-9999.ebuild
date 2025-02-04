# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 cmake

DESCRIPTION="NOAA APT satellite imagery decoder"
HOMEPAGE="https://github.com/Xerbo/aptdec"
SRC_URI=""
EGIT_REPO_URI="https://github.com/Xerbo/aptdec"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="
	media-libs/libpng
	media-libs/libsndfile"
RDEPEND="${DEPEND}"
