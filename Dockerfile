FROM python:3.12-slim AS build
RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /docs
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN git config --global --add safe.directory /docs && mkdocs build --strict

FROM nginxinc/nginx-unprivileged:alpine
COPY --from=build /docs/site /usr/share/nginx/html