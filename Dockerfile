FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y git
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install git+https://github.com/kruskal-labs/toolfront.git@ef90f13cab4338ac6ec1cb7a151ddadac7133c80#egg=toolfront

EXPOSE 3000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]
