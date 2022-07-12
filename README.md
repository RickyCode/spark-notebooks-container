# Use Jupyter Notebook With Spark (and other tools) From a Docker Container

### July 2022 | by Ricky from Kranio

---

## Specifications of the container:

```
Ubuntu "20.04.4 LTS (Focal Fossa)"
Spark 3.3.0
Scala 2.13.8
OpenJDK 64-Bit Server VM, 17.0.3
Python 3.10.5

openjdk version "17.0.3" 2022-04-19
OpenJDK Runtime Environment (build 17.0.3+7-Ubuntu-0ubuntu0.20.04.1)
OpenJDK 64-Bit Server VM (build 17.0.3+7-Ubuntu-0ubuntu0.20.04.1, mixed mode, sharing)
```


## Prerequisites:

- Docker Desktop or docker-compose installed

## Steps:


### 1. Define environment files

- Copy the `.env.example` file and rename the copy to `.env`
- Open de `.env` file and fill with your own variables
- Save and close the file

### 2. Run the docker compose command

- Open a shell located where the `docker-compose.yml` file is located.
- Run the command `docker compose up --detach`

### 3. Open the logs

- Run the command `docker logs notebooks-container`
- Copy the jupyter URL from the logs, it may have this format `http://127.0.0.1:8888/lab?token=7453ce17f2f31e8f2146b7bf9d2441e67808dfb4c0c55e16`

### 4. Open jupyter notebook on host

- On the jupyter URL replace `http://127.0.0.1:8888` with `http://127.0.0.1:8889` and paste it on your browser

## Util commands:

To keep logs running:
`docker logs --follow notebooks-container`

To use the container shell:
`docker exec -it notebooks-container /bin/bash`


## Special requirements:

If you need to install python packages that are not already installed in the container you can put them in the `requirements.txt` file before executing the docker compose command. Each line of the file has to have this example format: `<package>==<version>` for example `Flask==2.1.2`

## Already installed Python packages:

```
Package                       Version
----------------------------- ---------
alembic                       1.8.0
altair                        4.2.0
anyio                         3.6.1
argon2-cffi                   21.3.0
argon2-cffi-bindings          21.2.0
asttokens                     2.0.5
async-generator               1.10
attrs                         21.4.0
Babel                         2.10.3
backcall                      0.2.0
backports.functools-lru-cache 1.6.4
beautifulsoup4                4.11.1
bleach                        5.0.1
blinker                       1.4
bokeh                         2.4.3
Bottleneck                    1.3.5
brotlipy                      0.7.0
cached-property               1.5.2
certifi                       2022.6.15
certipy                       0.1.3
cffi                          1.15.1
charset-normalizer            2.1.0
click                         8.1.3
cloudpickle                   2.1.0
colorama                      0.4.5
conda                         4.13.0
conda-package-handling        1.8.1
cryptography                  37.0.4
cycler                        0.11.0
Cython                        0.29.30
cytoolz                       0.12.0
dask                          2022.7.0
debugpy                       1.6.0
decorator                     5.1.1
defusedxml                    0.7.1
dill                          0.3.5.1
distributed                   2022.7.0
entrypoints                   0.4
executing                     0.8.3
fastjsonschema                2.15.3
flit_core                     3.7.1
fonttools                     4.34.4
fsspec                        2022.5.0
gmpy2                         2.1.2
greenlet                      1.1.2
h5py                          3.7.0
HeapDict                      1.0.1
idna                          3.3
imagecodecs                   2022.2.22
imageio                       2.19.3
importlib-metadata            4.11.4
importlib-resources           5.8.0
ipykernel                     6.15.1
ipympl                        0.9.1
ipython                       8.4.0
ipython-genutils              0.2.0
ipywidgets                    7.7.1
jedi                          0.18.1
Jinja2                        3.1.2
joblib                        1.1.0
json5                         0.9.5
jsonschema                    4.6.2
jupyter-client                7.3.4
jupyter-core                  4.10.0
jupyter-server                1.18.1
jupyter-telemetry             0.1.0
jupyterhub                    2.3.1
jupyterlab                    3.4.3
jupyterlab-pygments           0.2.2
jupyterlab-server             2.15.0
jupyterlab-widgets            1.1.1
kiwisolver                    1.4.3
libmambapy                    0.24.0
llvmlite                      0.38.1
locket                        1.0.0
lz4                           4.0.0
Mako                          1.2.1
mamba                         0.24.0
MarkupSafe                    2.1.1
matplotlib                    3.5.2
matplotlib-inline             0.1.3
mistune                       0.8.4
mpmath                        1.2.1
msgpack                       1.0.4
munkres                       1.1.4
nbclassic                     0.3.7
nbclient                      0.6.6
nbconvert                     6.5.0
nbformat                      5.4.0
nest-asyncio                  1.5.5
networkx                      2.8.4
notebook                      6.4.12
notebook-shim                 0.1.0
numba                         0.55.2
numexpr                       2.8.0
numpy                         1.22.4
oauthlib                      3.2.0
packaging                     21.3
pamela                        1.0.0
pandas                        1.4.3
pandocfilters                 1.5.0
parso                         0.8.3
partd                         1.2.0
patsy                         0.5.2
pexpect                       4.8.0
pickleshare                   0.7.5
Pillow                        9.2.0
pip                           22.1.2
prometheus-client             0.14.1
prompt-toolkit                3.0.30
protobuf                      3.20.1
psutil                        5.9.1
ptyprocess                    0.7.0
pure-eval                     0.2.2
pyarrow                       8.0.0
pycosat                       0.6.3
pycparser                     2.21
pycurl                        7.45.1
Pygments                      2.12.0
PyJWT                         2.4.0
pyOpenSSL                     22.0.0
pyparsing                     3.0.9
pyrsistent                    0.18.1
PySocks                       1.7.1
python-dateutil               2.8.2
python-json-logger            2.0.1
pytz                          2022.1
PyWavelets                    1.3.0
PyYAML                        6.0
pyzmq                         23.2.0
requests                      2.28.1
ruamel.yaml                   0.17.21
ruamel.yaml.clib              0.2.6
ruamel-yaml-conda             0.15.80
scikit-image                  0.19.3
scikit-learn                  1.1.1
scipy                         1.8.1
seaborn                       0.11.2
Send2Trash                    1.8.0
setuptools                    63.1.0
six                           1.16.0
sniffio                       1.2.0
sortedcontainers              2.4.0
soupsieve                     2.3.1
SQLAlchemy                    1.4.39
stack-data                    0.3.0
statsmodels                   0.13.2
sympy                         1.10.1
tables                        3.7.0
tblib                         1.7.0
terminado                     0.15.0
threadpoolctl                 3.1.0
tifffile                      2022.5.4
tinycss2                      1.1.1
toolz                         0.12.0
tornado                       6.1
tqdm                          4.64.0
traitlets                     5.3.0
typing_extensions             4.3.0
unicodedata2                  14.0.0
urllib3                       1.26.10
wcwidth                       0.2.5
webencodings                  0.5.1
websocket-client              1.3.3
wheel                         0.37.1
widgetsnbextension            3.6.1
xlrd                          2.0.1
zict                          2.2.0
zipp                          3.8.0
```