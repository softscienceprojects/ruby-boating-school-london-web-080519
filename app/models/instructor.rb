class Instructor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_boating_test(student, testname)
        # take in a student instance and test name. 
        BoatingTest.all.find{|test| test.student == student && test.name == testname}
    end

    def pass_student(student, testname)
        #If there is a `BoatingTest` whose name and student match the values passed in
            checktest = find_boating_test(student, testname)
        if checktest
            checktest.status = "passed"
            checktest
        else
            BoatingTest.new(student: student, name: testname, status: "passed", instructor: self)
        end     
    end

    def fail_student(student, testname)
        #is there a shorter way to do this?
        checktest = find_boating_test(student, testname)
        if checktest
            checktest.status = "failed"
        else
            checktest = BoatingTest.new(student: student, name: testname, status: "failed", instructor: self)
        end
        checktest
    end


end
