FROM ryoishin/alphonse:debian
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/TeamAlphonse/Alphonse/master/requirements.txt
COPY . .
COPY ./Alphonse.sh .
ADD ./Alphonse.sh .
CMD ["bash","Alphonse.sh"]
