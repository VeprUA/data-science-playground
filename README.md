# Data Science Playground

Using this repo we can run anaconda3 environment in a docker container.

### Prerequesite

Before using this repo, docker image needs to be pulled down.

```bash
docker pull continuumio/anaconda3
```

Install jupyter notebook

```bash
docker run -i -t -p 8888:8888 continuumio/anaconda3 /bin/bash \
-c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir \
/opt/notebooks
```

### Running jupyter notebook from docker environment

Make sure to be in the root dir of the repo and run the following command 

```bash
bash scripts/run.sh
```

This will start a docker image, mount the notebooks located in the `/notebooks` dir, and run jupyter notebook on port `8888`

### Debuging 
Whenever you need to access the terminal of the anaconda environment run the following command
```
docker run -i -t continuumio/anaconda3 /bin/bash
```
