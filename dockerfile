FROM python:3-slim
RUN python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip \
    && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && python3 -m venv ~/syncserver \
    && ~/syncserver/bin/pip install anki
EXPOSE 8080
ENTRYPOINT ["/root/syncserver/bin/python","-m","anki.syncserver"]