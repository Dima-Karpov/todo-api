## Migration
migrate -path ./schema -database 'postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@localhost:5438/postgres?sslmode=disable' force 1
 - up (migrate -path ./schema -database 'postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@localhost:5438/postgres?sslmode=disable' up )
 - down (migrate -path ./schema -database 'postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@localhost:5438/postgres?sslmode=disable' down )