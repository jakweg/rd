cd tools
source .env
docker-compose run --build --rm bash -c "git config --global user.email $GIT_EMAIL && git config --global user.name $GIT_NAME && git config --global push.autoSetupRemote true && git config --global credential.helper store && echo https://$GIT_USERNAME:$GIT_TOKEN@github.com > /root/.git-credentials && bash"