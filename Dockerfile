FROM ubuntu

ADD immt-check-balance /immt-check-balance

RUN chmod -R 777 /immt-check-balance
RUN apt update && apt install openssl -y

CMD /immt-check-balance
