# $NetBSD: xorg.mk,v 1.25 2014/04/17 02:03:12 obache Exp $
#
# This is for X.org, but use "xfree" files also.

FILES_LIST=	${FILESDIR}/xorg

# XXX: what about xaw?

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../fonts/libfontenc/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../graphics/glut/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../x11/bigreqsproto/buildlink3.mk"
.include "../../x11/compositeproto/buildlink3.mk"
.include "../../x11/damageproto/buildlink3.mk"
.include "../../x11/dri2proto/buildlink3.mk"
.include "../../x11/evieext/buildlink3.mk"
.include "../../x11/fixesproto/buildlink3.mk"
.include "../../x11/fontcacheproto/buildlink3.mk"
.include "../../x11/fontsproto/buildlink3.mk"
.include "../../x11/glproto/buildlink3.mk"
.include "../../x11/inputproto/buildlink3.mk"
.include "../../x11/libFS/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXScrnSaver/buildlink3.mk"
.include "../../x11/libXTrap/buildlink3.mk"
.include "../../x11/libXau/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXdamage/buildlink3.mk"
.include "../../x11/libXdmcp/buildlink3.mk"
.include "../../x11/libXevie/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXfixes/buildlink3.mk"
.include "../../x11/libXfont/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXprintUtil/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.include "../../x11/libXres/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../x11/libXv/buildlink3.mk"
.include "../../x11/libdrm/buildlink3.mk"
.include "../../x11/libxcb/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"
.include "../../x11/printproto/buildlink3.mk"
.include "../../x11/randrproto/buildlink3.mk"
.include "../../x11/recordproto/buildlink3.mk"
.include "../../x11/renderproto/buildlink3.mk"
.include "../../x11/resourceproto/buildlink3.mk"
.include "../../x11/scrnsaverproto/buildlink3.mk"
.include "../../x11/trapproto/buildlink3.mk"
.include "../../x11/videoproto/buildlink3.mk"
.include "../../x11/xbitmaps/buildlink3.mk"
.include "../../x11/xcmiscproto/buildlink3.mk"
.include "../../x11/xcb-proto/buildlink3.mk"
.include "../../x11/xcb-util/buildlink3.mk"
.include "../../x11/xf86bigfontproto/buildlink3.mk"
.include "../../x11/xf86dgaproto/buildlink3.mk"
.include "../../x11/xf86driproto/buildlink3.mk"
.include "../../x11/xf86miscproto/buildlink3.mk"
.include "../../x11/xf86vidmodeproto/buildlink3.mk"
.include "../../x11/xkeyboard-config/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.include "../../x11/xproxymanagementprotocol/buildlink3.mk"
.include "../../x11/xtrans/buildlink3.mk"

# XXX  what is ${X11_MODULES} ?

# Check if any headers and libraries for ${X11_MODULES} found in
# ${X11BASE} actually belong to the base Xorg or not.
#
# XXX: maybe skip iconv and zlib too?
.for _pkg_ in ${BUILDLINK_TREE:N-*:Nx11-links:O:u}
CHECK_BUILTIN.${_pkg_}:=	yes
.  sinclude "${BUILDLINK_PKGSRCDIR.${_pkg_}}/builtin.mk"
CHECK_BUILTIN.${_pkg_}:=	no
.endfor

.for _pkg_ in ${BUILDLINK_TREE:N-*:Nx11-links:O:u}
IGNORE_PKG.${_pkg_}=	yes
.  if defined(USE_BUILTIN.${_pkg_}) && \
      !empty(USE_BUILTIN.${_pkg_}:M[yY][eE][sS])
.    if exists(${FILESDIR}/xorg.${_pkg_})
FILES_LIST+=	${FILESDIR}/xorg.${_pkg_}
.    elif exists(${FILESDIR}/xfree.${_pkg_})
FILES_LIST+=	${FILESDIR}/xfree.${_pkg_}
.    endif
.  endif
.endfor
