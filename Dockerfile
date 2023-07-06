FROM ubuntu:latest
RUN apt update
RUN apt clean
RUN apt autoremove
RUN apt install aptitude -y
RUN aptitude update
RUN aptitude install -y nodejs npm 
RUN apt install -y git
RUN git clean https://github.com/Mamaliprusty/mi-react.git
WORKDIR ./mi-react
RUN npm install
EXPOSE 3000
CMD ["npm", "start"] 
