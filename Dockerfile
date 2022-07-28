FROM library/python:3.10.5-slim
RUN apt-get update && apt-get install --no-install-recommends -y \
  # dependencies for building Python packages
  build-essential \
  # psycopg2 dependencies
  libpq-dev \
  gettext

ARG SECRET_KEY ${SECRET_KEY}
ARG DATABASE_URL ${DATABASE_URL}
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . ./
RUN pip install pip --upgrade
RUN pip install -r requirements.txt
EXPOSE 80
CMD sh /usr/src/app/utils/run.sh
