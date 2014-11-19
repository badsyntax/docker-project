IMAGE="example/ubuntu-node-hello"

docker build -t "$IMAGE" .

echo "Running image..."
docker run \
	--name="node-hello" \
	--env="VIRTUAL_HOST=node-hello.tld" \
	--env="VIRTUAL_PORT=5000" \
	--publish=":5000" \
	--detach=true \
	"$IMAGE"