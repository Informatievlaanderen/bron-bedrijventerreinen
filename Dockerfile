FROM geographica/gdal2:2.4.0 

RUN apt-get update && apt-get install -y vim dbview unzip wget less

COPY scripts /scripts


