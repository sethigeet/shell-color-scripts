# Maintainer: Geet Sethi
pkgname=shell-color-scripts
_pkgname=shell-color-scripts
pkgver=1.0.r58.78f979b
pkgrel=1
pkgdesc="A CLI for the collection of terminal color scripts. Includes 48 beautiful terminal color scripts."
arch=('i686' 'x86_64')
url="https://github.com/sethigeet/shell-color-scripts.git"
license=('MIT')
groups=()
depends=(binutils)
makedepends=()
checkdepends=()
optdepends=(bash zsh)
provides=(shell-color-scripts)
conflicts=()
replaces=()
backup=()
options=()
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

pkgver() {
  cd "${_pkgname}"
  printf "1.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
  cd ${_pkgname}
  rm -rf "${pkgdir}/opt/${pkgname}/colorscripts"
  mkdir -p "${pkgdir}/opt/${pkgname}/colorscripts"
  install -Dm644 colorscript.1 "${pkgdir}/usr/local/man/man1/colorscript.1"
  install -Dm755 colorscripts/* -t "${pkgdir}/opt/${pkgname}/colorscripts"
  install -Dm755 zsh_completion/* -t "${pkgdir}/opt/${pkgname}/zsh_completion"
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
  install -Dm644 README.md "${pkgdir}/usr/share/doc/${pkgname}/README.md"
  install -Dm755 colorscript.sh "${pkgdir}"/usr/bin/colorscript
  install -Dm644 zsh_completion/_colorscript -t "${pkgdir}"/usr/share/zsh/site-functions
}
