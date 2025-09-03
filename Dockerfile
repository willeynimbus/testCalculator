# Use Python base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Copy all files
COPY . .

# Run unit tests inside container (optional, can be removed from here if you want only pipeline to run tests)
RUN python -m unittest discover

# Default command
CMD ["python"]
