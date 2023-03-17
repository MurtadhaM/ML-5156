# I REMOVED THE COMMENTS FROM THE DOCKERFILE TO MAKE IT EASIER TO READ
# Murtadha Marzouq
# URL: https://hub.docker.com/r/mmarzouq/docker-lab-5156

################# TODO 1 #################
FROM ubuntu:18.04
################# TODO 2 #################
LABEL maintainer="Murtadha Marzouq"
ARG HOST_UID="1000"
ARG HOST_GID="100"
################# TODO 3 #################
ARG HOST_USER="murtadhamarzouq"
ENV HOME=/home/$HOST_USER \
    MINICONDA_VERSION=4.6.14 \
    CONDA_VERSION=4.6.14 \
    CONDA_DIR=/home/$HOST_USER/miniconda \
    USER=$HOST_USER \
    HOST_USER=$HOST_USER \
    UID=$HOST_UID \
    GID=$HOST_GID \
    SHELL=/bin/bash  \
    LC_ALL=C.UTF-8  \
    LANG=C.UTF-8
# Set the path to conda
ENV PATH=${CONDA_DIR}/bin:${HOME}/.local/bin:${PATH}
# User home directory
RUN groupadd -r ${HOST_USER} \
    && useradd -m -u ${HOST_UID} -g ${HOST_GID} -s ${SHELL} ${HOST_USER} \
    && mkdir -p ${HOME} \
    && chown -R ${HOST_USER}:${HOST_GID} ${HOME} \
    && echo "${HOST_USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && chmod 0440 /etc/sudoers \
    && echo "export PATH=${CONDA_DIR}/bin:${HOME}/.local/bin:${PATH}" >> ${HOME}/.bashrc \
    && echo "Done"
################# TODO 4 #################
COPY pip_requirements.txt $HOME/
COPY conda_requirements.txt $HOME/
# Install dependencies
RUN apt-get update && apt-get install -yq --no-install-recommends \
    vim \
    git \
    curl \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sSL https://repo.continuum.io/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh -o $HOME/miniconda.sh \
    && chown -R ${HOST_USER}:${HOST_GID} $HOME
################# TODO 5 #################
USER $HOST_USER
################# TODO 6 #################
WORKDIR $HOME
RUN /bin/bash ./miniconda.sh -bp $CONDA_DIR \
    && rm miniconda.sh \
    && echo "---> Updating conda" 
################# TODO 7 #################
RUN  conda config --system --prepend channels conda-forge \
    && conda config --system --prepend channels anaconda \
    ##### TODO 7-1 #####
    && conda install -v --yes --file conda_requirements.txt \
    ##### TODO 7-2 #####
    && echo "---> Cleaning up conda" \
    && rm conda_requirements.txt && echo  "----> Done"
################# TODO 8 #################
RUN pip install --upgrade pip \
    ##### TODO 8-1 #####
    && pip install --user -r pip_requirements.txt --no-cache-dir \
    ##### TODO 8-2 #####
    && rm pip_requirements.txt
RUN echo 'export PS1="\[\033[1;36m\]\u@\[\033[1;32m\]\h:\[\033[1;34m\]\w\[\033[0m\]\$ "' >> ${HOME}/.bashrc
################# TODO 9 #################
CMD /bin/bash
################ TODO 10 #################
#*************** BUILDING THE IMAGE ***************#
# docker build -t docker-lab-5156 . 
#*************** TAGGING THE IMAGE ***************#
# docker tag docker-lab-5156 mmarzouq/docker-lab-5156 \
#*************** PUSHING THE IMAGE ***************#
# docker push mmarzouq/docker-lab-5156  \
#*************** RUNNING THE IMAGE ***************#
# docker run -it --rm -p 8888:8888 mmarzouq/docker-lab-5156
#*************** Jupyter (INSIDE THE CONTAINER) ***************#
# jupyter-notebook --ip 0.0.0.0
####### URL FOR REPO #######
# https://hub.docker.com/r/mmarzouq/docker-lab-5156

