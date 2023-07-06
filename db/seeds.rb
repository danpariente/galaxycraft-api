Student.destroy_all

Student.create!([
  {
  name: "Sole Barboza",
  email: "sole@email.com"
  },
  {
    name: "Dan Pariente",
    email: "dan@email.com"
  },
])

p "Created #{Student.count} students"
