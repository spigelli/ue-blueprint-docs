FROM httpd:2.4
COPY ./sphinx/build/ /usr/local/apache2/htdocs/
# ARG SPHINX_BUILD
# ENV SPHINX_BUILD=${SPHINX_BUILD:-no}
# RUN set -ex; \
# 	if [ $SPHINX_BUILD == "sphinx" ]; then
# 		source /usr/local/venv/bin/activate && \
# 		sphinx-build
