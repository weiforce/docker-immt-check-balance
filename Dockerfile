FROM ubuntu

RUN apt update && apt install openssl -y

ADD immt-check-balance /immt-check-balance
RUN chmod -R 777 /immt-check-balance

CMD /immt-check-balance
