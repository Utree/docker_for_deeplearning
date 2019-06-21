# Copyright (c) Yuki Sekiya
ARG BASE_CONTAINER=jupyter/base-notebook
FROM $BASE_CONTAINER

RUN pip install matplotlib
RUN pip install tensorflow
RUN pip install keras
RUN pip install pandas
RUN pip install sklearn
