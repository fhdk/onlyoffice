# Maintainer: David Spink <yorper_protonmail.com>

pkgname=onlyoffice-desktopeditors
pkgver=5.3.5
pkgrel=1
pkgdesc='Open-source office suite that combines text, spreadsheet and presentation editors.'
url="https://www.onlyoffice.com/"
license=('AGPL3')
arch=('x86_64')
depends=('alsa-lib' 'curl' 'wget' 'libxss' 'gtkglext' 'cairo' 'gconf' 'gcc-libs'
         'ttf-dejavu' 'ttf-liberation' 'ttf-carlito' 'xdg-utils' 'libx11' 'fontconfig'
         'freetype2' 'libsm' 'libxtst' 'gstreamer' 'gst-plugins-base-libs' 'libdrm'
         'pango' 'libice' 'libpulse' 'libxext' 'libxdamage' 'nss' 'nspr'
         'libcurl-gnutls' 'libxcursor' 'gtk2' 'libglvnd' 'libxrender' 'libcups'
         'libxrandr' 'libxcomposite' 'libxfixes' 'libxi' 'atk' 'libxcb' 'gdk-pixbuf2'
         'qt5-svg' 'gtk3' 'qt5-declarative' 'qt5-x11extras' 'qt5-multimedia'
         'desktop-file-utils' 'hicolor-icon-theme')
options=(!strip !zipman)
source=("https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-${pkgver}/${pkgname}-x64.tar.gz"
        "${pkgname}.desktop"
        "${pkgname}.sh")
noextract=("${pkgname}-x64.tar.gz")
sha256sums=('7bf6ad2e1879591f69693e83fb177f6ed3f96b6cc44e5cfe9b6259da5c441abd'
            '23496f1cb2dee73c86c9c7b62ab03c6bd33411dc98b703df07744a7764dbe19a'
            'f066e1f8c68696ef06319b2c41aacd44de7f5711b4b1a4e5543e4b9c5f393d59')

package() {
  install -d -m0755 "$pkgdir"/{usr/bin/onlyoffice,usr/bin}
  tar -zxvf ${pkgname}-x64.tar.gz -C "$pkgdir"/usr/bin/onlyoffice
  # suid sanbox
  chmod 4755 "$pkgdir/usr/bin/onlyoffice/desktopeditors/chrome-sandbox"
  install -D -m0755 "${srcdir}/${pkgname}.sh" $pkgdir/usr/bin/onlyoffice/desktopeditors/${pkgname}.sh
  ln -s "/usr/bin/onlyoffice/desktopeditors/${pkgname}.sh" "${pkgdir}/usr/bin/${pkgname}"
  install -Dm644 "${pkgname}.desktop" "${pkgdir}/usr/share/applications/${pkgname}.desktop"
  install -Dm644 "${pkgdir}/usr/bin/onlyoffice/desktopeditors/LICENSE.htm" $pkgdir/usr/share/licenses/$pkgname/LICENSE
  install -Dm644 "${pkgdir}/usr/bin/onlyoffice/desktopeditors/3DPARTYLICENSE" $pkgdir/usr/share/licenses/$pkgname/3DPARTYLICENSE
}
