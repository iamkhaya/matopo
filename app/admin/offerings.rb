ActiveAdmin.register Offering do
  permit_params :provider_id,
                :activity_id,
                :name,
                :description,
                :place,
                :pricingperperson,
                :inclusions,
                :exclusions,
                attachments_attributes: [:file, :file_cache]
end
