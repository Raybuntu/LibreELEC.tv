################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="audiodecoder.sidplay"
PKG_VERSION="172cf89"
PKG_SHA256="ba580bcd662791c38fd1c8ef9b824084028c15d6bcce41908cf5595ad0bd9329"
PKG_REV="4"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kodi.tv"
PKG_URL="https://github.com/notspiff/audiodecoder.sidplay/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform sidplay-libs"
PKG_SECTION=""
PKG_SHORTDESC="audiodecoder.sidplay"
PKG_LONGDESC="audiodecoder.sidplay"
PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="kodi.audiodecoder"

PKG_CMAKE_OPTS_TARGET="-DSIDPLAY2_LIBRARIES=$SYSROOT_PREFIX/usr/lib"
