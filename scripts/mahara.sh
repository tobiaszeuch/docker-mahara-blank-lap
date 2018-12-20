
echo "\n[i] Install Mahara\n"
cd /tmp
curl -LO https://launchpad.net/mahara/${VERSION}/${VERSION}${RELEASE}/+download/mahara-${VERSION}${RELEASE}.tar.gz
curl -o mahara-${VERSION}${RELEASE}.tar.gz.md5 -L https://launchpad.net/mahara/${VERSION}/${VERSION}${RELEASE}/+download/mahara-${VERSION}${RELEASE}.tar.gz/+md5
echo "[i] Verifying integrity..."
CHECKSUM_STATE=$(echo -n $(md5sum -c mahara-${VERSION}${RELEASE}.tar.gz.md5) | tail -c 2)
if [ "${CHECKSUM_STATE}" != "OK" ]; then echo "[!!] Checksum does not match!" && exit 1; fi
echo "[i] All seems good, now unpacking mahara-${VERSION}${RELEASE}.tar.gz"
mkdir -p /usr/src/mahara
tar --strip-components=2 -xf mahara-${VERSION}${RELEASE}.tar.gz -C /usr/src/mahara --verbose
rm mahara-${VERSION}${RELEASE}.*
