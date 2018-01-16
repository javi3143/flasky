docker exec mongodb mongoimport --db myflix --collection videos --drop --file /home/videos.json
docker exec mongodb mongoimport --db myflix --collection categories --drop --file /home/categories.json
docker exec mongodb mongoimport --db myflix --collection series --drop --file /home/series.json
docker exec -i -t rec bash
python TF-recomm/svd_train_val.py
