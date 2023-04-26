FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN python -m pip install jupyterlab
RUN jupyter notebook --generate-config
RUN sed -i -e "s/# c.NotebookApp.iopub_data_rate_limit = 1000000/c.NotebookApp.iopub_data_rate_limit = 10000000/" ~/.jupyter/jupyter_notebook_config.py
RUN python -m pip install pandas
