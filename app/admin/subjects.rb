ActiveAdmin.register Subject do
    permit_params :name, subject_ids: []
    show title: 'Subject Info' do
      h1 subject.name
      h3 'you have ' + pluralize(subject.teachers.count, 'teachers') + ' for this subject'
      subject.teachers.each do |teacher|
        div do
          h4 teacher.name
        end
      end
      h3 'You have ' + pluralize(subject.students.count, 'student') + ' for this subject'
      subject.students.each do |student|
        div do
          h4 student.name
        end
      end
    end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
