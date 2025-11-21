# Use official lightweight Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy all project files to container
COPY . .

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose the app port
EXPOSE 8080

# Start the Flask app
CMD ["python", "app.py"]
