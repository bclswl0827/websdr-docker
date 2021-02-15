#!/bin/bash
WEBSDR_PATH=$(find /usr/bin/websdr -name "dist*")
WEBSDR_BIN=$(find ${WEBSDR_PATH} -name "websdr*" -type f | head -n1)
mkdir -p ${WEBSDR_PATH}/pub2/tmp
chmod 755 ${WEBSDR_PATH}/pub2/tmp \
          ${WEBSDR_BIN}
cd ${WEBSDR_PATH}; ${WEBSDR_BIN}

