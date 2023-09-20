# Use an official Python runtime as a parent image
FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN mkdir -p /app/weights

RUN curl -L https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth -o /app/weights/sam_vit_h_4b8939.pth

EXPOSE 7860

ENV NAME World

CMD ["python", "app.py"]
