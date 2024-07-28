
FROM python:3.10

ADD /bikeshare_model_api /bikeshare_model_api/

WORKDIR /bikeshare_model_api

RUN pip install --upgrade pip

RUN pip install -r requirements.txt
# expose port for application
EXPOSE 8001
# start fastapi application
CMD ["python", "app/main.py"]