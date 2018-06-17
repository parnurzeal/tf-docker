FROM tensorflow/tensorflow

RUN apt-get update && apt-get install -y \
  wget

# For SimpleHTTPServer
EXPOSE 8000
