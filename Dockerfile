FROM jupyter/all-spark-notebook:2022-07-11

COPY requirements.txt /tmp/

RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt