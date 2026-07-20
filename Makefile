.PHONY: postgres-up postgres-down postgres-logs postgres-shell run

postgres-up:
	docker compose up -d postgres

postgres-down:
	docker compose down

postgres-logs:
	docker compose logs -f postgres

postgres-shell:
	docker compose exec postgres psql -U postgres -d home_sensor_hub

run:
	set -a && . ./.env && set +a && go run ./cmd/api
