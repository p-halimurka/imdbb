ActiveAdmin.register User do
  permit_params :email, :name, :username
end
