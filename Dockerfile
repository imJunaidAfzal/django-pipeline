FROM python:3.8

ENV PYTHONUNBUFFERED 1


# set work directory
RUN mkdir -p /usr/src/django_dep
# WORKDIR /usr/src/django_dep
COPY . /usr/src/django_dep
RUN pip install --upgrade pip
RUN pip install -r /usr/src/django_dep/requirements.txt
RUN python /usr/src/django_dep/manage.py collectstatic --no-input



# copy project
COPY . .
