docker build --no-cache --progress=plain -t ja_flask_test_container .

docker run -p 5000:5000 ja_flask_test_container
