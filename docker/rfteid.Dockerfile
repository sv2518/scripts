FROM firedrakeproject/firedrake:latest
CMD sh ./firedrake/bin/activate \
&& python $(which firedrake-clean) \
&& ./firedrake/bin/pip install pytest-cov pytest-xdist \
&& ./firedrake/bin/pip list \
&& cd firedrake/src/firedrake \
&& git checkout tsslac_version1.1 \
&& ../../bin/pytest -n 11 --cov firedrake -v tests
