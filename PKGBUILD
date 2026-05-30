pkgname=zlib1.1.4-home
pkgver=1.1.4
pkgrel=1
pkgdesc="Legacy zlib 1.1.4 installed into user home directory"
arch=('x86_64')
license=('Zlib')
options=('!strip')

package() {
install -d "${pkgdir}/opt/zlib114/lib"

```
install -m755 \
    "${srcdir}/libz.so.1.1.4" \
    "${pkgdir}/opt/zlib114/lib/libz.so.1.1.4"

ln -sf libz.so.1.1.4 "${pkgdir}/opt/zlib114/lib/libz.so.1"
ln -sf libz.so.1.1.4 "${pkgdir}/opt/zlib114/lib/libz.so"
```

}
