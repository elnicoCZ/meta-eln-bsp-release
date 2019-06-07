#!/bin/sh

if [ -z "$MACHINE" ]; then
    echo setting to default machine
    MACHINE='sqm4ul6-eb'
fi

. sources/meta-fsl-bsp-release/imx/tools/fsl-setup-release.sh $@

if [ $? -eq 0 ]; then
    echo "BBLAYERS += \" \${BSPDIR}/sources/meta-elnico-sqm4 \"" >> $BUILD_DIR/conf/bblayers.conf
fi
