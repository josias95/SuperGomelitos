class Appointment < ApplicationRecord
    after_create :save_services


    enum horario: [:"09:00-09:30", :"09:30-10:00", :"10:00-10:30", :"10:30-11:00",:"11:00-11:30",
    :"11:30-12:00",:"12:00-12:30",:"12:30-01:00", :"01:30-02:00",:"02:00-02:30",:"03:00-03:30",
    :"03:30-04:00",:"04:00-04:30",:"04:30-05:00",:"05:00-05:30",:"05:30-06:00"]
    
    def services=(value)
        @services = value
    end

    def save_services
        @services.each do |service_id|
            HasService.create(service_id: service_id, appointment_id: self.id )
        end
    end
end
