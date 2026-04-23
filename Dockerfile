FROM openlistteam/openlist:latest

USER root

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5244

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/opt/openlist/openlist", "server"]
