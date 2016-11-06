# Start with the official image python3
FROM python:3.5

MAINTAINER Lunran <feitcounter@gmail.com>

# Open port for Picraft and mcpi
EXPOSE 4711

# Run Python
CMD pip install picraft && python
