FROM firedrakeproject/firedrake:latest
CMD sh ./firedrake/bin/activate \
&& python $(which firedrake-clean) \
&& ./firedrake/bin/pip install py-cpuinfo \
&& ./firedrake/bin/pip list \
&& cd firedrake/src/PyOP2 \
&& git pull \
&& git checkout vectorisation \
&& cd ../loopy \
&& git pull \
&& git checkout cvec \
&& cd ../PyOP2 \
&& export PETSC_DIR=../petsc \
&& ../../bin/pytest -v test
