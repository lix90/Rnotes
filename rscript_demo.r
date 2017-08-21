## setenv
spark_home <- "/path/to/spark"
Sys.setenv(SPARK_HOME = spark_home)

## start spark.session
library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))
sparkR.session(master = "local[2]",
               sparkConfig = list(spark.driver.memory = "1G"))

## read data to spark
iris_sdf <- as.DataFrame(iris)

## manipulate data

## compute data

## write
