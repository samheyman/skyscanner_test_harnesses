FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
ENV AMADEUS_CLIENT_ID
ENV AMADEUS_CLIENT_SECRET
ENV GOOGLE_MAPS_KEY