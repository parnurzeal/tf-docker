FROM tensorflow/tensorflow

RUN apt-get update && apt-get install -y \
  wget \
  git \
  vim

# Get TF Official models
RUN git clone https://github.com/tensorflow/models.git /root/models
ENV PYTHONPATH $PYTHONPATH:/root/models
WORKDIR "/root/models"
RUN pip install --user -r official/requirements.txt

WORKDIR "/notebooks"

# For SimpleHTTPServer
EXPOSE 8000
