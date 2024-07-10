#!/bin/bash

# use the pip wheel to install itself
PYTHONPATH='./pip-${PKG_VERSION}-py3-none-any.whl' $PYTHON -m pip install --no-cache-dir --no-index --no-index --find-links . pip

cd $PREFIX/bin
rm -f pip2* pip3*
rm -f $SP_DIR/__pycache__/pkg_res*
# Remove all bundled .exe files courtesy of distlib.
rm -f $SP_DIR/pip/_vendor/distlib/*.exe
