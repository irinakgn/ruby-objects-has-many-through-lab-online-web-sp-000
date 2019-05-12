class Patient

  attr_reader :name, :appointment, :doctor


  def initialize(name)
    @all = []
    @name = name
    @all << name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def self.all
    puts @all
    @all
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
end
