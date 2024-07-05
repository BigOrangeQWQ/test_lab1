FROM python:3.11 

WORKDIR /tmp

COPY ./plugin_test.py /tmp/plugin_test.py

RUN curl -sSL https://install.python-poetry.org -o install-poetry.py

RUN python install-poetry.py --yes

ENV PATH="${PATH}:/root/.local/bin"

CMD ["python", "plugin_test.py"]