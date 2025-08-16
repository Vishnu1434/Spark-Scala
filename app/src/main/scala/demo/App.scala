package demo

import org.apache.spark.sql.SparkSession

object App {
  def main(args: Array[String]): Unit = {
    println("Hello from App")

    val spark = SparkSession.builder().appName("spark-scala").getOrCreate()

    val df = spark.emptyDataFrame

    df.createOrReplaceTempView("df")

    val sqlDF = spark.sql("select * from df")

    sqlDF.show(false)

    Thread.sleep(5000)
    println("------------------THE END--------------------")
    System.exit(0)
  }
}
