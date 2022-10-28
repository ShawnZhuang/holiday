FROM sphinxdoc/sphinx

ADD install.sh /install/install.sh
RUN bash /install/install.sh

ADD requirements.txt /install/requirements.txt
RUN pip3 install -r /install/requirements.txt