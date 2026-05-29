# PKGBUILD для сборки zlib1.1.4 из локальных исходников в GitHub Actions
pkgname=zlib1.1.4
pkgver=1.1.4
pkgrel=1
pkgdesc="Legacy zlib 1.1.4 library for VirtualBox 6.1 compatibility"
arch=('x86_64')
url="https://zlib.net"
license=('Zlib')
provides=('zlib1.1.4')
options=('!strip')

package() {
    # Создаем структуру папок внутри будущего установщика
    install -d -m755 "${pkgdir}/usr/lib"

    # Копируем скомпилированные динамические библиотеки .so в пакет
    # Даем файлу то имя, которое жестко ищет ваш установщик VirtualBox
    cp "${srcdir}/../libz.so.1.1.4" "${pkgdir}/usr/lib/libz.so.1.1.4"
    
    # Создаем необходимые системные ссылки (симлинки)
    ln -s libz.so.1.1.4 "${pkgdir}/usr/lib/libz1.1.4"
    ln -s libz.so.1.1.4 "${pkgdir}/usr/lib/libz.so.1"
    ln -s libz.so.1.1.4 "${pkgdir}/usr/lib/libz.so"
}
