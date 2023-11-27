FROM stefwe/tic-taac:latest

# Required for GitHub actions to write in /github/workspace folder
USER 0

COPY entrypoint.sh /threat-model/entrypoint.sh

ENTRYPOINT ["/threat-model/entrypoint.sh"]
