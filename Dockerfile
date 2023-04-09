FROM python:3.9.16-alpine

COPY ./requirements.txt /app/requirements.txt
# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app
# configure the container to run in an executed manner
ENTRYPOINT ["python"]
EXPOSE 5000
CMD ["Calculator.py"]

