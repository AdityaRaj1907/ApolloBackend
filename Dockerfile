
FROM python:3.9.10-slim-bullseye


RUN mkdir /app
COPY ./apollo_backend.py /app/apollo_backend.py

COPY ./python_libs.txt /app/
COPY ./backend_config.yaml /app/backend_config.yaml

WORKDIR /app
RUN pip install -r python_libs.txt


#RUN rm -rf ./*.py

#RUN rm -R /bin/bash

ENTRYPOINT ["python3", "/app/apollo_backend.py"]
