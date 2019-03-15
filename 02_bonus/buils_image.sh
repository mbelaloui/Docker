docker image build -t ft-vim ../01_dockerfiles/ex00/
docker image build -t ft-teamserveur ../01_dockerfiles/ex01/
docker image build -t ft-rails:on-build ../01_dockerfiles/ex02/
docker image build -t ftrails ../01_dockerfiles/ex02/run/
docker image build -t ft-gitlab ../01_dockerfiles/ex03/

docker image build -t chat ./chat/
docker image build -t hellow_java ./java_hellow/
docker image build -t push_swap ./push_swap/
docker image build -t react ./react/