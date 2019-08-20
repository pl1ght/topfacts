FROM ubuntu 

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install python -y
CMD curl -A 'random' -v "https://www.reddit.com/r/TellMeAFact/top/.json?count=20" | python -m json.tool
