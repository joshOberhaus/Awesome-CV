FROM texlive/texlive:latest

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Install additional packages if needed
RUN apt-get update && apt-get install -y \
    # add your additional packages here, if any \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Expose ports if needed
EXPOSE 3000
