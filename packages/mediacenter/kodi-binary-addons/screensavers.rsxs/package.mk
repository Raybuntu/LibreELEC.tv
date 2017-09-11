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

PKG_NAME="screensavers.rsxs"
PKG_VERSION="e302833"
PKG_SHA256="9df6d5d88eb9b7ba7126d05e8d4f67130b65cb7c3a6de5cb97cc7caa17816253"
PKG_REV="4"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kodi.tv"
PKG_URL="https://github.com/notspiff/screensavers.rsxs/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform libXt libXmu"
PKG_SECTION=""
PKG_SHORTDESC="screensavers.rsxs"
PKG_LONGDESC="screensavers.rsxs"
PKG_AUTORECONF="no"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.ui.screensaver"

if [ "$OPENGL" = "no" ] ; then
  exit 0
fi

addon() {
  for _ADDON in $PKG_BUILD/.install_pkg/usr/share/$MEDIACENTER/addons/* ; do
    _ADDON_ID=$(basename $_ADDON)

    install_binary_addon $_ADDON_ID $_ADDON_ID

    MULTI_ADDONS="$MULTI_ADDONS $_ADDON_ID"
  done

  # export MULTI_ADDONS so create_addon knows multiple addons
  # were installed in $ADDON_BUILD/
  export MULTI_ADDONS="$MULTI_ADDONS"
}
