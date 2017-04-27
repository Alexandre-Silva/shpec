#!/bin/sh -ex
VERSION=0.3.0

TMPDIR=${TMPDIR:-/tmp}

SHPECDIR=${TMPDIR}/shpec-${VERSION}

cd $TMPDIR
curl -sL https://github.com/rylnd/shpec/archive/${VERSION}.tar.gz | tar zxf -
cd $SHPECDIR
make install
cd $TMPDIR
rm -rf $SHPECDIR
