lazy val commonSettings = Seq(
  organization := "org.myproject",
  version := "0.1.0",
  scalaVersion := "2.11.2"
)

lazy val root = (project in file(".")).
  settings(commonSettings: _*).
  settings(
    name := "My Project"
  )


libraryDependencies ++= Seq(
  ("org.scalatest" % "scalatest_2.10" % "2.2.2" % "test")
)
