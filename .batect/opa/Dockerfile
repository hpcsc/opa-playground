FROM alpine:3.15.0

RUN wget -O opa https://openpolicyagent.org/downloads/v0.37.2/opa_linux_amd64_static && \
    chmod +x ./opa && \
    mv -v ./opa /usr/local/bin

ENTRYPOINT ["opa"]
