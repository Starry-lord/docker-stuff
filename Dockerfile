FROM python:3.9
WORKDIR /code 
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./hello.py /code/hello.py
COPY ./flag.txt /code/flag.txt
CMD ["uvicorn", "stuff:app", "--host", "0.0.0.0", "--port", "80"]
EXPOSE 80/tcp 