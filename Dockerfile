FROM python:3.12-slim

RUN mkdir -p /antp /usr/local/src/antp

WORKDIR /usr/local/src/antp
COPY . .
RUN python3 -m pip install .

WORKDIR /antp

ENV ANTP_TEMPLATE=/antp/template
ENV ANTP_OUTPUT=/antp/output/outfile
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/usr/local/src/antp

ENTRYPOINT [ "python3", "-m", "antp" ]

