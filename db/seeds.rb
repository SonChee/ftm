# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8

user_list = [
              ["Thanh", "lmt@framgia.com", "123456"],
              ["Phi", "pvp@framgia.com", "123456"],
              ["Son", "cds@framgia.com", "123456"],
              ["Quang", "vnq@framgia.com", "123456"],
              ["Duc", "nqd@framgia.com", "123456"],
              ["Anh", "nvta@framgia.com", "123456"],
              ["Thoai", "tvt@framgia.com", "123456"],
              ["Tan", "nht@framgia.com", "123456"]
            ]

user_list.each do |u|
  User.create(name: u[0], email: u[1], password: u[2])
end

course_list = [
                ["Training 20131201", "Khóa training 01/12/2013"],
                ["Training 20140102", "Khóa training 02/01/2014"],
                ["Training 20140205", "Khóa training 05/02/2014"]
              ]
              
course_list.each do |c|
  Course.create(name: c[0], description: c[1])
end


subject_list = [
                ["Ruby on Rails", 0, "Learn RoR basic"],
                ["Git", 1, "Git - Distributed revision control and source code management (SCM) system "],
                ["MySQL", 2, "Manage databases with MySQL"],
                ["FTM", 3, "Framgia Training Management"],
                ["FTS", 4, "Framgia Test System"]
              ]
              
subject_list.each do |s|
  Subject.create(name: s[0], pre_subject_id: s[1], description: s[2])
end


task_list = [
              ["Chapter 1", 1, 0, "From zero to deploy"],
              ["Chapter 2", 1, 1, "A demo app"],
              ["Chapter 3", 1, 2, "Mostly static pages"],
              ["Chapter 4", 1, 3, "Rails-flavored Ruby"],
              ["Begin Git", 2, 0, "Begining about Git"],
              ["Git Basic", 2, 5, "Git Basic"],
              ["Branch on Git", 2, 6, "Learn about Git Branch"],
              ["First Test", 3, 0, "MySQL first test"],
              ["Lecture 1", 3, 8, "Entity Relationship Modeling"],
              ["Lecture 2", 3, 9, "Design Database & Basic MySQL"],
              ["Final Test", 3, 10, "MySQL final test"],
              ["Signin Signout", 4, 11, "User function"]
            ]

task_list.each do |t|
  Task.create(name: t[0], subject_id: t[1], pre_task_id: t[2], description: t[3])
end

status_list = [
                ["Not Started", "Not Started"],
                ["Processing", "Processing"],
                ["Finished", "Finished"]
              ]

status_list.each do |stt|
  Task.create(name: stt[0], description: stt[1])
end

activity_list = [
                  [1,2, 1, 1, 1, 3],
                  [1,2, 1, 1, 2, 3],
                  [1,2, 1, 1, 4, 3], 
                  [2,2, 2, 1, 1, 3],
                  [2,2, 2, 3, 1, 3],
                  [2,2, 3, 1, 1, 3]
                ]
                
activity_list.each do |ac|
  Activity.create(user_id: ac[0], course_id: ac[1], subject_id: ac[2], 
                  task_id:ac[3], status_id: ac[4])
end

usercourse_list = [
                    [1, 2],
                    [2, 2],
                    [3, 2],
                    [4, 2],
                    [5, 2],
                    [6, 1],
                    [7, 2],
                    [8, 3]
                  ]
                  
usercourse_list.each do |uc|
  UserCourse.create(user_id: uc[0], course_id: uc[1])
end

assignment_list = [
                    [1, 2, 2],
                    [2, 2, 2],
                    [3, 2, 2], 
                    [6, 1, 3]
                  ]

assignment_list.each do |as|
  Assignment.create(trainee_id: as[0], course_id: as[1], status_id: as[2])
end

assignment_subject_list = [
                            [1, 1, 2],
                            [2, 2, 2]
                          ]

assignment_subject_list.each do |ass|
  AssignmentSubject.create(assignment_id: ass[0], subject_id: ass[1], status_id: ass[2])
end

assignment_task_list = [
                            [1, 1, 2],
                            [2, 2, 2]
                          ]

assignment_task_list.each do |ast|
  AssignmentTask.create(assignment_subject_id: ast[0], task_id: ast[1], status_id: ast[2])
end