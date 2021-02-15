#!/bin/bash
WEBSDR_PATH=$(find /usr/bin/websdr -name "dist*")
WEBSDR_BIN=$(find ${WEBSDR_PATH} -name "websdr*" -type f)
chmod 755 ${WEBSDR_BIN}
cd ${WEBSDR_PATH}; ${WEBSDR_BIN}

