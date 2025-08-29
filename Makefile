.PHONY: run r
.PHONY: build b
.PHONY: clean c

b: build

build:
	@go build -o ./bin/trustapp ./cmd/app/main.go

r: run

run: build
	@ ./bin/trustapp

c: clean

clean:
	@rm -rf ./bin
