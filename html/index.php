<?php
$redis = new Redis();
$redis->connect("redis-service");
$redis->set("abc", time());
echo $redis->get("abc");