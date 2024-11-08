import os
from robot.libdoc import libdoc

DIRECTORY = "keywords"
DIRECTORY_PATH = "./" + DIRECTORY + "/"
HTML = "keywords.html"
XML = "keywords.xml"

if not os.path.exists(DIRECTORY):
    os.mkdir(DIRECTORY)

libdoc("./src/RobotframeworkYetAnotherOcrLibrary", DIRECTORY_PATH + HTML)
libdoc("./src/RobotframeworkYetAnotherOcrLibrary", DIRECTORY_PATH + XML)
