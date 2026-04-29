# Use the official Python slim image
FROM python:3.11-slim

# Prevent apt-get from prompting for user input
ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory
WORKDIR /app

# Install only essential system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set default port to 8080 (often preferred by cloud providers)
ENV PORT=8080
EXPOSE 8080

# Command to run the Streamlit app, binding to the dynamic PORT
ENTRYPOINT ["sh", "-c", "streamlit run app.py --server.port=$PORT --server.address=0.0.0.0"]
