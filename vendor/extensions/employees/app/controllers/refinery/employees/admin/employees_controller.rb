module Refinery
  module Employees
    module Admin
      class EmployeesController < ::Refinery::AdminController

        crudify :'refinery/employees/employee',
                :title_attribute => 'first_name'

        private

        # Only allow a trusted parameter "white list" through.
        def employee_params
          params.require(:employee).permit(:first_name, :middle_name, :last_name, :photo_id, :description, :role_id, :work_experience, :category, :section_id)
        end
      end
    end
  end
end
