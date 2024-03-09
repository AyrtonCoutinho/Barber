# Use a imagem oficial do nginx como base
FROM ruby

WORKDIR /app
# Instale o Rails

RUN gem install rails

COPY . .

# Exponha a porta 3000 para acesso externo

CMD cd barber; bundle install; bin/rails server -b 0.0.0.0;

