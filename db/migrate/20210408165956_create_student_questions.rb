class CreateStudentQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :student_questions do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
