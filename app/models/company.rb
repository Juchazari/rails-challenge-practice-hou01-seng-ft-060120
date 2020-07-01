class Company < ApplicationRecord
    has_many :offices
    has_many :buildings, through: :offices
    has_many :employees

    validates :name, presence: true

    def total_rent_spending
        total_amount = 0
        self.buildings.each do |building|
            total_amount += building.rent_per_floor
        end
        total_amount
    end

    def company_office_floors
        office_floors = Hash.new{|h,k| h[k] = [] }
        self.buildings.each do |building|
            building.offices.each do |office|
                if office.company == self
                    office_floors[building] << office.floor
                end
            end
        end
        office_floors
    end
end
