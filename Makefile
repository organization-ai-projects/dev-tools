.PHONY: help check test fmt clippy build release install publish

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

check: ## Check compilation
	cargo check --all-features --workspace

test: ## Run tests
	cargo test --all-features --workspace

fmt: ## Check formatting
	cargo fmt --all -- --check

clippy: ## Run clippy
	cargo clippy --all-features --workspace -- -D warnings

build: ## Build release
	cargo build --release --all-features --workspace

ci: fmt clippy test ## Run full CI locally

release: ## Create a new release (usage: make release VERSION=0.1.0)
	@if [ -z "$(VERSION)" ]; then echo "Usage: make release VERSION=0.1.0"; exit 1; fi
	@echo "Creating release v$(VERSION)"
	cargo set-version $(VERSION)
	git add .
	git commit -m "chore: release v$(VERSION)"
	git tag v$(VERSION)
	git push origin main --tags
	@echo "✅ Release v$(VERSION) created! GitHub Actions will publish to crates.io"

install: ## Install binary locally
	cargo install --path crates/dev-forge-cli --force

publish: ## Publish to crates.io manually
	cargo publish -p dev-forge-core
	@sleep 30
	cargo publish -p dev-forge

clean: ## Clean build artifacts
	cargo clean