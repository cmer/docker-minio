FROM minio/minio

MAINTAINER Carl Mercier <foss@carlmercier.com>

WORKDIR /go/src/app

VOLUME ["/export"]
VOLUME ["/root/.minio"]

EXPOSE 9000
ENTRYPOINT ["go-wrapper", "run"]

# Necessary for Unraid
CMD ["server", "/export"]
