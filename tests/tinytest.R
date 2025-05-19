# Test files in inst/tinytest/

# Make test_package() controllable by env var TT_AT_HOME
home <- identical(Sys.getenv("TT_AT_HOME"), "TRUE")

if (requireNamespace("tinytest", quietly = TRUE)) {
  suppressMessages(tinytest::test_package("OmicNavigator", at_home = home))
}
