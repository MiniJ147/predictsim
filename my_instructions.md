# This document describes my process of getting predictsim running

## Python Version
[python download](https://www.python.org/downloads/release/python-2718/)
```
python 2.7.18
```

## Ubuntu tar install
```
$ cd {download directory}
```
### Download Source Code & Extracting
```
$ sudo wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tar.xz
$ sudo tar -xf Python-2.7.18.tar.xz
$ cd Python-2.7.18
```

###  Compile and Install
```
$ sudo ./configure --prefix=/opt/python2.7
$ sudo make -j$(nproc)
$ sudo make altinstall
```

### Verify Install
```
# Python 2.7.18
$ /opt/python2.7/bin/python2.7 --version 
```

### Installing Pip2.7
Use the [pypa/get-pip](https://github.com/pypa/get-pip?tab=readme-ov-file#get-pippy) README
```
$ curl -sSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py
$ python get-pip.py

# verify install
$ pip2.7 -- version
```

## Setting up venv for python 2.7 

to setup venv run
```
create-2.7-venv.sh 
```
the only changes you should have to make is the source file of python2.7

### Running after setup
```
source py27-env/bin/activate
```

## Install Dependencies
```
# inside venv
$ pip2.7 install -r pyss/requirements.txt

# you will error with docplex install so after that run
# last version I checked that supports python2.7 but idk
$ pip2.7 install docplex==2.12.182
```

Or via script

```
bash venv-install.sh
```

## How to Run
```
# the docs are pretty good here so self explanatory
$ python2.7 pyss/run_simulator.py <input_file.swf> <config_file.py> <output.csv>
```