ActiveAdmin.register Teacher do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :subject_id, teachers_ids: []
  show title: 'Teacher Info' do
    h1 teacher.name
    h3 'This teacher has ' + pluralize(teacher.students.count, 'students')
    teacher.students.each do |student|
      div do
        h4 student.name
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :subject_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
