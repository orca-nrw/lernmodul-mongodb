class Student:
  def __init__(self, courseId, studentId, universityId):
    self.courseId = courseId
    self.id = studentId
    self.universityId = universityId


  def printCourseId(self):
    print(self.courseId)


  def printStudentId(self):
    print(self.id)


  def printUniId(self):
    print(self.universityId)



