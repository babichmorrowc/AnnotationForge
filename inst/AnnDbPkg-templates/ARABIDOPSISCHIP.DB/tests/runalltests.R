suppressMessages(library("RUnit"))

options(warn=1)

dirs <- 'unit'

testFilePat <- ".*test\\.R$"

allSuite <- defineTestSuite(name="allSuite",
                            dirs=dirs,
                            testFileRegexp=testFilePat,
                            rngKind="default",
                            rngNormalKind="default")

runTestSuite(allSuite)

q(runLast=FALSE)
