FROM judge0/judge0:1.13.0

# Set environment variables and labels
ENV JUDGE0_HOMEPAGE "https://judge0.com"
ENV JUDGE0_SOURCE_CODE "https://github.com/judge0/judge0"
ENV JUDGE0_MAINTAINER "Herman Zvonimir Došilović <hermanz.dosilovic@gmail.com>"
ENV JUDGE0_VERSION "1.13.1"

LABEL homepage=$JUDGE0_HOMEPAGE
LABEL source_code=$JUDGE0_SOURCE_CODE
LABEL maintainer=$JUDGE0_MAINTAINER
LABEL version=$JUDGE0_VERSION

EXPOSE 2358

ENTRYPOINT ["/api/docker-entrypoint.sh"]
CMD ["/api/scripts/server"]
