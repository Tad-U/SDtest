FROM ubuntu
RUN echo "#!/bin/sh" > /entrypoint
RUN echo 'echo "$@" && exec "${@:-/bin/ls}"' >> /entrypoint
RUN chmod 755 /entrypoint
ENTRYPOINT ["/entrypoint"]
CMD ["/bin/df"]
