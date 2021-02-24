FROM python:3.8
ENV PYTHONUNBUFFERED 1

# Install Python Dependencies
COPY requirements.txt /
RUN pip install --no-cache -r /requirements.txt

COPY ./src /src
WORKDIR /src

EXPOSE 8080

ENTRYPOINT ["uvicorn", "main:app","--host", "0.0.0.0", "--port", "8080", "--reload"]

