class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(student: self, name: name, status: status, instructor: instructor)
    end

    def self.find_student(studentsfirstname)
        self.all.find{|student| student.first_name == studentsfirstname}
    end

    def mytests
        teststaken = BoatingTest.all.select{|test| test.student == self}
    end
        
    def grade_percentage
        #return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`
        passedtests = mytests.select {|test| test.status == "passed"}.count
        totaltests= mytests.count
        passedtests / totaltests.to_f * 100
    end

end
