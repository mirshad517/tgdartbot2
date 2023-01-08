# Use the official Dart image as a base image
FROM dart:2.10

# Set the working directory
WORKDIR /app

# Copy the pubspec.yaml file
COPY pubspec.yaml ./

# Install the dependencies
RUN pub get

# Copy the rest of the application code
COPY . .

# Build the application
RUN pub build

# Expose the port for the application
EXPOSE 8080

# Run the built application
CMD ["pub", "run", "bin/main.dart"]
