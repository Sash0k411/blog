ActiveAdmin.register Post do

  index do
    selectable_column
    id_column
    column :id
    column :title
    column :description
    actions
  end
end
