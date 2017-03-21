import Foundation

	// Creates a tuple of students with different properties

let students = (
    (first: "Mathew", last: "Sheets", email: "swift.dude@gmail.com"),
    (first: "Annie", last: "Sheets", email: "annie.sheets@email.com"),
    (first: "Sam", last: "Sheets", email: "sam.sheets@email.com"),
    (first: "Jack", last: "Sheets", email: "jack.sheets@email.com"),
    (first: "Hudson", last: "Sheets", email: "hudson.sheets@email.com"),
    (first: "Oliver", last: "Sheets", email: "oliver.sheets@email.com")
)

	// Single tuples
	
let newStudent = (first: "Carson", last: "Sheets", email: "carson.sheets@email.com")

	// String of first name

var otherStudents = "Other students in my class are \(students.1.first), \(students.2.first), \(students.3.first), \(students.4.first) and \(students.5.first)."

	// Defines each student seperately, along with firstname, range, and substring, 

let firstStudent = students.0

let lastStudent = students.5
let lastStudentToFind = " and \(lastStudent.first)"
let lastStudentRange = otherStudents.range(of: lastStudentToFind)!
let lastStudentStrTmp = otherStudents.substring(with: lastStudentRange)

let lastStudentStr = lastStudentStrTmp.substring(from: lastStudentStrTmp.index(lastStudentStrTmp.startIndex, offsetBy: 5))
let newOtherStudents = otherStudents.substring(to: otherStudents.index(otherStudents.endIndex, offsetBy: -lastStudentToFind.characters.count))

let thirdStudent = students.3
let thirdStudentToFind = thirdStudent.first
let thirdStudentRange = otherStudents.range(of: thirdStudentToFind)!
let thirdStudentStr = otherStudents.substring(with: thirdStudentRange)

let fourthStudent = students.4
let fourthStudentToFind = fourthStudent.first
let fourthStudentRange = otherStudents.range(of: fourthStudentToFind)!
let fourthStudentStr = otherStudents.substring(with: fourthStudentRange)

var classDates = ""

let dates = (
    (
        year: 2017, month: (
            jan: (date: 18, date: 25),
            feb: (date: 1, date: 8, date: 15, date: 22),
            mar: (date: 1, date: 8, date: 15, date: 22, date: 29),
            apr: (date: 5, date: 12, date: 19, date: 26),
            may: (date: 3)
        )
    )
)

	// Creates parts of the date, with a set year if the tuple

var dateComponets = DateComponents()
dateComponets.year = dates.year

	// Sets each month [Jan-May] w/ particular compontents, then adds it to the classDates string

	// start of jan
	
dateComponets.month = 1
dateComponets.day = dates.month.jan.0
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.jan.1
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}

	// start of feb

dateComponets.month = 2
classDates += ", "
dateComponets.day = dates.month.feb.0
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.feb.1
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.feb.2
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.feb.3
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}

	// start of march
	
dateComponets.month = 3
classDates += ", "
dateComponets.day = dates.month.mar.0
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.mar.1
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.mar.2
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.mar.3
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.mar.4
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}

	// start of apr
	
dateComponets.month = 4
classDates += ", "
dateComponets.day = dates.month.apr.0
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.apr.1
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.apr.2
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}
classDates += ", "
dateComponets.day = dates.month.apr.3
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}

	// start of may
	
dateComponets.month = 5
classDates += ", "
dateComponets.day = dates.month.may.0
if let date = Calendar.current.date(from: dateComponets) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = DateFormatter.Style.medium
    classDates += dateFormatter.string(from: date)
}

	// Prints out all the information

print("My name is \(firstStudent.first) \(firstStudent.last), my email is \(firstStudent.email).")
print(otherStudents)
print("\(lastStudentStr) dropped this class.")
print("\(newOtherStudents)and \(newStudent.first.uppercased()) was added.")
print("\(thirdStudentStr) and \(fourthStudentStr) are in the class.")
print("My Swift class in on \(classDates)")




