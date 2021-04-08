# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:'john', role:'holder')
u2 = User.create(name:'sally', role:'holder')
u3 = User.create(name:'bob', role:'holder')
u5 = User.create(name:'Walmart', role:'issuer')
u6 = User.create(name:'CVS', role:'issuer')
u7 = User.create(name:'Delta', role: 'verifier')
u9 = User.create(name:'Canada', role: 'verifier')

#
v1 = Vaccine.create(name:'covid', maker:'pfizer', user_id:u5.id)
v2 = Vaccine.create(name:'covid', maker:'pfizer', user_id:u6.id)
v3 = Vaccine.create(name:'covid', maker:'moderna', user_id:u6.id)
v4 = Vaccine.create(name:'flu', maker:'moderna', user_id:u6.id)

## ISSUE VACCInes
# Roll issuer how create these entries
Vaccination.create(user_id:u1.id, vaccine_id:v3.id, image:'url here')
Vaccination.create(user_id:u2.id, vaccine_id:v2.id, image:'url here')


RequiredVaccination.create(user_id: u7.id, vaccine_id: v1.id )
RequiredVaccination.create(user_id: u7.id, vaccine_id: v4.id )

RequiredVaccination.create(user_id: u9.id, vaccine_id: v1.id )


# st1 = Streak.create(name:'no coffee challenge', reward:'1 million dollars')
# st2 = Streak.create(name:'no sugar challenge', reward:'1 million million dollars')
# st3 = Streak.create(name:'no internet challenge', reward:'braggin rights')

# # on group of users in a streak competition
# UserStreak.create(user_id: u1.id, streak_id: st1.id, status:'quit')
# UserStreak.create(user_id: u2.id, streak_id: st1.id, status:'ongoing')
# UserStreak.create(user_id: u3.id, streak_id: st1.id, status:'ongoing')

# # on group of users in a streak competition(done)
# UserStreak.create(user_id: u1.id, streak_id: st2.id, status:'quit')
# UserStreak.create(user_id: u4.id, streak_id: st2.id, status:'lost')
# UserStreak.create(user_id: u3.id, streak_id: st2.id, status:'winner')

q1 = Question.create(question:'What is 1 + 1', correct_answer:'2')
q2 = Question.create(question:'What is 1 + 2', correct_answer:'3')
q3 = Question.create(question:'True or false is big daddies awesom', correct_answer:'true')

s1 = Student.create(name:'Simon')
s2 = Student.create(name:'Bill')
s3 = Student.create(name:'Suzy')

StudentQuestion.create(student_id: s1.id, question_id:q1.id, answer:'2')
StudentQuestion.create(student_id: s1.id, question_id:q3.id, answer:'false')

StudentQuestion.create(student_id: s2.id, question_id:q3.id, answer:'true')
StudentQuestion.create(student_id: s2.id, question_id:q1.id, answer:'3')

StudentQuestion.create(student_id: s3.id, question_id:q1.id, answer:'2')
StudentQuestion.create(student_id: s3.id, question_id:q2.id, answer:'3')
StudentQuestion.create(student_id: s3.id, question_id:q3.id, answer:'true')

 Student.all_with_scores # => [{name, score:}]
