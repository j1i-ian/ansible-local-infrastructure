docker-compose down

ssh-keygen -q -t rsa -N '' -f ./id_rsa <<<y

docker-compose up --build -d

docker exec -it ansible-child-node-1 rc-status
docker exec -it ansible-child-node-1 rc-service sshd start
docker exec -it ansible-child-node-2 rc-status
docker exec -it ansible-child-node-2 rc-service sshd start
docker exec -it ansible-child-node-3 rc-status
docker exec -it ansible-child-node-3 rc-service sshd start
