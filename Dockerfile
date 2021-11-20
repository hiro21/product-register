FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
# WORKDIRはフォルダがなかったら作る
WORKDIR /product-register
# localのファイルをコピーしproduct-registerにコピーする
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install