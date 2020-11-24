class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|i| i.patient == self}
    end

    def doctors
        place = []
        Appointment.all.select{|i| i.patient == self ? place << i.doctor : nil}
        place
    end

    def self.all
        @@all
    end

end
