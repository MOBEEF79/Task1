# Use Python 3.7 as a base image
FROM python:3.7
# Copy contents into image
COPY . . 
# install pip dependencies from requirements file
RUN pip install -r requirements.txt 
# Set YOUR_NAME environment variable
ENV YOUR_NAME Keith
# Expose correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
