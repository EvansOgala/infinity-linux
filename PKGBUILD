pkgname=infinity-menu
pkgver=1.0
pkgrel=1
pkgdesc="Infinity Linux application menu integration"
arch=('any')
license=('custom')

package() {
    install -Dm644 \
        usr/share/desktop-directories/InfinityLinux.directory \
        "$pkgdir/usr/share/desktop-directories/InfinityLinux.directory"

    install -Dm644 \
        etc/xdg/menus/applications-merged/infinity.menu \
        "$pkgdir/etc/xdg/menus/applications-merged/infinity.menu"
}
