date_stamp=$(date +"%Y-%m-%d")  # For date only
# date_stamp=$(date +"%Y-%m-%d_%H-%M-%S")  # For date and time
file_name="MongoDB_$date_stamp.log"

mongod \
--dbpath "$MONGODB_DB_PATH" \
--logpath "$MONGODB_LOG_PATH/$file_name" \
--logappend \
--fork


