FROM codeberg.org/readeck/readeck:latest

# Set environment variables
ENV READECK_LOG_LEVEL=info
ENV READECK_SERVER_HOST=0.0.0.0
ENV READECK_SERVER_PORT=8000
ENV READECK_SERVER_PREFIX=/b4a.run
ENV READECK_ALLOWED_HOSTS=localhost,readeck-1pc0ohbr.b4a
ENV READECK_USE_X_FORWARDED=true

# Expose the port that the application will run on
WORKDIR /readeck
EXPOSE 8000

# Define the command to run the application
CMD ["readeck", "serve", "-config", "config.toml"]
