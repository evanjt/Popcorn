FROM ghcr.io/osgeo/gdal:ubuntu-small-3.8.5

ENV POETRY_VERSION=1.8.3

RUN apt-get update && apt-get install python3-pip -y
RUN pip install "poetry==$POETRY_VERSION"

COPY . /popcorn
WORKDIR /popcorn

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction