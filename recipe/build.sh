#!/bin/bash
set -ex

if [[ "${GFORTRAN}" != "gfortran" ]]; then
    ln -sf "${GFORTRAN}" "${BUILD_PREFIX}/bin/gfortran"
fi

${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
