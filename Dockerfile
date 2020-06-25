FROM alpine
RUN apk update
RUN apk add cabal zlib-dev ghc wget ncurses-dev build-base
RUN cabal v2-update
RUN cabal v2-install gitit
ENV PATH="/root/.cabal/bin:${PATH}"
CMD gitit
