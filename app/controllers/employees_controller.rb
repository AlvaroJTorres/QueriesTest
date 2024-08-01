class EmployeesController < ApplicationController
  def index
    # Employee.all.each do |emp|
    #   emp.addresses.each { |addr| puts (addr.street) }
    # end

    # Employee.joins(:addresses).all.each do |emp|
    #   emp.addresses.each { |addr| puts (addr.street) }
    # end
    
    # Employee.includes(:addresses).all.each do |emp|
    #   emp.addresses.each { |addr| puts (addr.street) }    
    # end
      
    Employee.joins(:addresses).includes(:addresses).all.each do |emp|
      emp.addresses.each { |addr| puts(addr.street) }  
    end
  end
end
