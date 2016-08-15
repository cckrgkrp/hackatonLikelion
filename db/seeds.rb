# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ce = Department.create(departName: "컴퓨터공학과", departDesc: "Lorem ipsum dolor sit amet.<br>Consectetur adipiscing elit.", id: 1)
cep1 = Proffessor.create(proffessorName: "CE1", proffessorDesc: "aCDDFA ASD", department_id: ce.id)
cep2 = Proffessor.create(proffessorName: "CE2",  proffessorDesc: "ZVCAAASDF VVVVV....^^", department_id: ce.id)
cep3 = Proffessor.create(proffessorName: "CE3",  proffessorDesc: "ㅁㄴㅇㄹ ^^ *****", department_id: ce.id)
cel1 = Lecture.create(lectureName: "자료구조", department_id: ce.id)
cel2 = Lecture.create(lectureName: "기초 데이터베이스", department_id: ce.id)
cel3 = Lecture.create(lectureName: "운영체제",department_id: ce.id)
Proflecture.create([{department_id: ce.id, proffessor_id: cep1.id, lecture_id: cel1.id},
                    {department_id: ce.id, proffessor_id: cep1.id, lecture_id: cel2.id},
                    {department_id: ce.id, proffessor_id: cep2.id, lecture_id: cel2.id},
                    {department_id: ce.id, proffessor_id: cep3.id, lecture_id: cel3.id}])

ie = Department.create(departName: "산업공학과", departDesc: "Lorem ipsum dolor sit amet.<br>Consectetur adipiscing elit.", id: 2)
iep1 = Proffessor.create(proffessorName: "IE1", proffessorDesc: "ㅁㄴㅇㄴㅁㅇ ㅋㅋ ㄹㄹㄹ ㅂㅂ", department_id: ie.id)
iep2 = Proffessor.create(proffessorName: "IE2", proffessorDesc: "1ㅂㅁㅋ2ㅈㄴㅌ3ㄷㅇㅊㅊ", department_id: ie.id)
iep3 = Proffessor.create(proffessorName: "IE3", proffessorDesc: "ㅂㅈㄷㅂㅈㄴㅁㅁㄴㅇㅋ퓨 ㅠㅠㅠ ㅜㅎㄱㅓ", department_id: ie.id)
iep4 = Proffessor.create(proffessorName: "IE5", proffessorDesc: "ㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿ^^^^", department_id: ie.id)
iel1 = Lecture.create(lectureName: "생산 관리", department_id: ie.id)
iel2 = Lecture.create(lectureName: "실험계획법", department_id: ie.id)
iel3 = Lecture.create(lectureName: "데이터 마이닝",department_id: ie.id)
Proflecture.create([{department_id: ie.id, proffessor_id: iep1.id, lecture_id: iel1.id},
                    {department_id: ie.id, proffessor_id: iep1.id, lecture_id: iel2.id},
                    {department_id: ie.id, proffessor_id: iep2.id, lecture_id: iel2.id},
                    {department_id: ie.id, proffessor_id: iep3.id, lecture_id: iel3.id}])

ee = Department.create(departName: "전자전기공학부", departDesc: "Lorem ipsum dolor sit amet.<br>Consectetur adipiscing elit.", id: 3)
eep1 = Proffessor.create(proffessorName: "EE1", proffessorDesc: "ㅁㄴㅇㄴㅁㅇ ㅋㅋ ㄹㄹㄹ ㅂㅂ", department_id: ee.id)
eep2 = Proffessor.create(proffessorName: "EE2", proffessorDesc: "1ㅂㅁㅋ2ㅈㄴㅌ3ㄷㅇㅊㅊ", department_id: ee.id)
eep3 = Proffessor.create(proffessorName: "EE3", proffessorDesc: "ㅂㅈㄷㅂㅈㄴㅁㅁㄴㅇㅋ퓨 ㅠㅠㅠ ㅜㅎㄱㅓ", department_id: ee.id)
eep4 = Proffessor.create(proffessorName: "EE5", proffessorDesc: "ㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿ^^^^", department_id: ee.id)
eel1 = Lecture.create(lectureName: "우왕", department_id: ee.id)
eel2 = Lecture.create(lectureName: "맥스웰", department_id: ee.id)
Proflecture.create([{department_id: ee.id, proffessor_id: eep1.id, lecture_id: eel1.id},
                    {department_id: ee.id, proffessor_id: eep1.id, lecture_id: eel2.id},
                    {department_id: ee.id, proffessor_id: eep2.id, lecture_id: eel2.id},
                    {department_id: ee.id, proffessor_id: eep3.id, lecture_id: eel2.id}])

d4 = Department.create(departName: "기계 시스템디자인공학과", departDesc: "Lorem ipsum dolor sit amet. \nConsectetur adipiscing elit.", id: 4)
Proffessor.create(proffessorName: "ME1", proffessorDesc: "ㅁㄴㅇㄴㅁㅇ ㅋㅋ ㄹㄹㄹ ㅂㅂ", department_id: d4.id)
Proffessor.create(proffessorName: "ME2", proffessorDesc: "1ㅂㅁㅋ2ㅈㄴㅌ3ㄷㅇㅊㅊ", department_id: d4.id)
Proffessor.create(proffessorName: "ME3", proffessorDesc: "ㅂㅈㄷㅂㅈㄴㅁㅁㄴㅇㅋ퓨 ㅠㅠㅠ ㅜㅎㄱㅓ", department_id: d4.id)
Proffessor.create(proffessorName: "ME5", proffessorDesc: "ㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿㄿ^^^^", department_id: d4.id)

User.create(name: "섹시", password: "123", studentNumber: "123", role: "admin")