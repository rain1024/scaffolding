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
