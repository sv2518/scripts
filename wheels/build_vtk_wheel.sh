#!/bin/bash
git clone https://gitlab.kitware.com/vtk/vtk.git
cd vtk
git checkout tags/v9.0.1 -b v9.0.1
cd ..
mkdir vtk_build
cd vtk_build
# cmake -GNinja -DVTK_WHEEL_BUILD=ON -DVTK_PYTHON_VERSION=3 -DVTK_WRAP_PYTHON=ON ../vtk
# ninja
cmake -G"Unix Makefiles" -DVTK_WHEEL_BUILD=ON -DVTK_PYTHON_VERSION=3 -DVTK_WRAP_PYTHON=ON ../vtk
make
python3 setup.py bdist_wheel