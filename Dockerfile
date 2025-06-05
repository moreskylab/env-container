# Use a lightweight base image
FROM python:3.11-slim

# Set environment variable (default value can be overridden at runtime)
ENV MESSAGE="Docker MSG"

# Set working directory
WORKDIR /app

# Copy application code
COPY app.py .

# Install Flask
RUN pip install Flask

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
