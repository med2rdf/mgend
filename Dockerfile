FROM rust:latest

WORKDIR /app

COPY . .

# 依存関係を事前にダウンロードしキャッシュ(必要か?)
RUN cargo fetch

RUN cargo build --release

CMD ["mgend-rdf", "--help"]