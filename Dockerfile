FROM python:alpine
ADD . /usr/src/proxpi
RUN pip install /usr/src/proxpi
ENV FLASK_APP=proxpi
ENTRYPOINT ["flask"]
CMD ["run", "--host", "0.0.0.0"]
