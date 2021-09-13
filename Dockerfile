FROM alpine:3.14

COPY requirements.txt .

# Setup os packages

pip3 install -r requirements.txt

COPY . .

HEALTHCHECK --interval=60s --timeout=30s --start-period=5s --retries=3 CMD [ "" ]

ENTRYPOINT [ "" ]


