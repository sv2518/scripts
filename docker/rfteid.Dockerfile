FROM firedrakeproject/vanilla:latest
CMD sh ./firedrake/bin/activate \
&& firedrake-update \
&& cat ./firedrake/firedrake-update.log
