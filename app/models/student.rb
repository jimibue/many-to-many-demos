class Student < ApplicationRecord

    def self.all_with_scores

     # how do I find average score?
     # two way sql, or ruby

     #loop throuh all students
      Student.all.map do |student|
        count = 0
        correct = 0
        # loop through each question of one student
        StudentQuestion.where(student_id: student.id).each do |student_question|
            # want to figur out if the answer is correct
           correct_answer = Question.find(student_question.question_id).correct_answer
           
           count += 1
           if student_question.answer === correct_answer
            correct += 1
           end
           

        end

       {name: student.name, grade: correct.to_f/count.to_f }
    end
    end
end
