install:
	cp -a templates_kcl /openils/var
	mkdir -p /openils/var/web/css/skin/kcl/opac/
	cp -a css/* /openils/var/web/css/skin/kcl/opac/
	mkdir -p /openils/var/web/images/kcl
	cp -a images/* /openils/var/web/images/kcl/
	chown -R opensrf:opensrf /openils/var/templates_kcl
	chown -R opensrf:opensrf /openils/var/web/css/skin/kcl
	chown -R opensrf:opensrf /openils/var/web/images/kcl

diff:
	diff -urq templates_kcl /openils/var/templates_kcl
	diff -urq css /openils/var/web/css/skin/kcl/opac
	diff -urq images /openils/var/web/images/kcl
