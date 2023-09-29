FROM alpine:edge

# https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6683-9729577be50de537692c3a19e86365a5e0f99a54/fx.tar.xz
WORKDIR /

RUN apk add xz curl bash

RUN curl -o fx.tar.xz https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6683-9729577be50de537692c3a19e86365a5e0f99a54/fx.tar.xz

RUN tar -xvf fx.tar.xz

RUN chmod +x run.sh

RUN ls

EXPOSE 30120
EXPOSE 40120

CMD [ "./run.sh" ]