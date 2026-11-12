.PHONY: setup test lint build up down

setup:
	./scripts/setup.sh

test:
	pnpm test
	cd contracts/evm && forge test
	cd contracts/cosmwasm && cargo test

lint:
	pnpm lint
	cd contracts/evm && forge fmt --check
	cd contracts/cosmwasm && cargo fmt --check && cargo clippy --all-targets -- -D warnings

build:
	pnpm build
	cd contracts/evm && forge build
	cd contracts/cosmwasm && cargo build --release --target wasm32-unknown-unknown

up:
	docker compose -f infra/docker-compose.yml up -d

down:
	docker compose -f infra/docker-compose.yml down
