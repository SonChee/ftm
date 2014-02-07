# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8
=begin
user_list = [
              ["Thanh", "lmt@framgia.com",  "admin123456@xyz!", 3],
              ["Phi",   "pvp@framgia.com",  "admin123456@xyz!", 3],
              ["Son",   "cds@framgia.com",  "admin123456@xyz!", 3],
              ["Quang", "vnq@framgia.com",  "admin123456@xyz!", 1],
              ["Duc",   "nqd@framgia.com",  "admin123456@xyz!", 1],
              ["Anh",   "nvta@framgia.com", "admin123456@xyz!", 2],
              ["Thoai", "tvt@framgia.com",  "admin123456@xyz!", 2],
              ["Tan",   "nht@framgia.com",  "admin123456@xyz!", 3]
            ]

user_list.each do |u|
  User.create(name: u[0], email: u[1], password: u[2], permission: u[3])
end
=end

User.create(:name => 'Admin',
            :email => 'larryritchie.ceo@gmail.com',
            :profile => 'Site Administrator',
            :permission => 3,
            :password => 'admin1234!',
            :password_confirmation => 'admin1234!')

User.create(:name => 'Supervisor',
            :email => 'kellychan@gmail.com',
            :profile => 'Site Supervisor',
            :permission => 2,
            :password => 'supervisor1234!',
            :password_confirmation => 'supervisor1234!')

User.create(:name => 'Trainee',
            :email => 'kellylane@gmail.com',
            :profile => 'Site Trainee',
            :permission => 1,
            :password => 'trainee1234!',
            :password_confirmation => 'trainee1234!')

course_list = [
                ["Training 20131201", "Khóa training 01/12/2013"],
                ["Training 20140102", "Khóa training 02/01/2014"],
                ["Training 20140205", "Khóa training 05/02/2014"]
              ]
              
course_list.each do |c|
  Course.create(name: c[0], description: c[1])
end


subject_list = [
                ["Ruby on Rails", "Learn RoR basic"],
                ["Git", "Git - Distributed revision control and source code management (SCM) system "],
                ["MySQL", "Manage databases with MySQL"],
                ["FTM", "Framgia Training Management"],
                ["FTS", "Framgia Test System"]
              ]
              
subject_list.each do |s|
  Subject.create(name: s[0], description: s[1])
end


task_list = [
              ["Chapter 1", 1, "From zero to deploy"],
              ["Chapter 2", 1, "A demo app"],
              ["Chapter 3", 1, "Mostly static pages"],
              ["Chapter 4", 1, "Rails-flavored Ruby"],
              ["Begin Git", 2, "Begining about Git"],
              ["Git Basic", 2,  "Git Basic"],
              ["Branch on Git", 2, "Learn about Git Branch"],
              ["First Test", 3, "MySQL first test"],
              ["Lecture 1", 3, "Entity Relationship Modeling"],
              ["Lecture 2", 3, "Design Database & Basic MySQL"],
              ["Final Test", 3, "MySQL final test"],
              ["Signin Signout", 4, "User function"]
            ]

task_list.each do |t|
  Task.create(name: t[0], subject_id: t[1], description: t[2])
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

assignment_list = [
                    [1, 2, 2],
                    [2, 2, 2],
                    [3, 2, 2], 
                    [6, 1, 3]
                  ]

assignment_list.each do |as|
  Assignment.create(user_id: as[0], course_id: as[1], status_id: as[2])
end

assignment_subject_list = [
                            [1, 1, 2],
                            [2, 2, 2]
                          ]

assignment_subject_list.each do |ass|
  AssignmentSubject.create(assignment_id: ass[0], subject_id: ass[1], status_id: ass[2])
end

assignment_task_list = [
                            [1, 1, 1, 2],
                            [2, 2, 1, 2]
                          ]

assignment_task_list.each do |ast|
  AssignmentTask.create(assignment_subject_id: ast[0], task_id: ast[1], order: ast[2], status_id: ast[3])
end
