def grade_for(name, school)
  student = school[:students].find { |student| student[:name] == name}
  student[:grade]
end

def find_instructor(name, school)
  find_person(name, school[:instructors])
end

def find_student(name, school)
  find_person(name, school[:students])
end

def find_person(name, people)
  people.find { |person| person[:name] == name }
end

def update_subject_for(name, subject, school)
  teacher = school[:instructors].find { |teacher| teacher[:name] == name }
  teacher[:subject] = subject
end

def add_student(name, grade, school)
  student = {name: name, grade: grade}
  school[:students] << student
end

def add_new_property(key, value, hash)
  hash[key] = value
end
