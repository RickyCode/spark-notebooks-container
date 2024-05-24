FROM jupyter/all-spark-notebook:2022-07-11

COPY requirements.txt /tmp/
COPY spark-jars/*.jar /usr/local/spark/jars/

RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt