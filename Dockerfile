# Use an official OpenJDK image
FROM adoptopenjdk/openjdk11

# Set application directory
ENV "APP_HOME=/usr/src/app"
WORKDIR $APP_HOME

# Ensure the target directory exists before copying
RUN mkdir -p $APP_HOME

# Copy the JAR file from the correct location
COPY target/*.jar $APP_HOME/app.jar

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]

