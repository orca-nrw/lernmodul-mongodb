class ParameterReader:

    def __init__(self):
        self.classInfo = ["This is the parameter reader for the jupyter notebook"]
        self.userIfentifier = 0

    def printModule(self):
        print(self.classInfo)

    def setUserIdentifier(self, userIfentifier):
        self.userIfentifier = userIfentifier