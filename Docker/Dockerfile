FROM python
COPY . /src
RUN ["python", "/src/cpu.py"]
CMD ["python", "-m SimpleHTTPServer 8080"]