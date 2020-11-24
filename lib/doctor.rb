class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select{|i| i.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        place = []
        Appointment.all.select{|app| app.doctor == self ? place << app.patient : nil}
        place
    end

    def self.all
        @@all
    end

end
