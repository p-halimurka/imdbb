ActiveAdmin.register Movie do
  permit_params([:title, :description, category_ids: []])

  controller do
    def create
      params[:movie][:category_ids] = params[:movie][:category_ids].tr("[]", "").split(",")
      super
    end
    def update
      params[:movie][:category_ids] = params[:movie][:category_ids].tr("[]", "").split(",")
      super
    end
  end
end
