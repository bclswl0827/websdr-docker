#!/bin/bash
WEBSDR_PATH=$(find /usr/bin/websdr -name "dist*")
WEBSDR_BIN=$(find ${WEBSDR_PATH} -name "websdr" -type f | head -n1)
WEBSDR_ARCH=$(if [ `uname -m` == "x86_64" ]; then echo "64"; elif [ `uname -m` == "armv7l" ]; then echo "-rpi"; fi)
mkdir -p ${WEBSDR_PATH}/pub2/tmp
chmod 755 ${WEBSDR_PATH}/pub2/tmp \
          ${WEBSDR_BIN}${WEBSDR_ARCH}
cd ${WEBSDR_PATH}; ${WEBSDR_BIN}${WEBSDR_ARCH}
