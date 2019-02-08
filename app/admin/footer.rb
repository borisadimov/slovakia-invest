ActiveAdmin.register Footer do
  permit_params :bratislava_phone, :moscow_phone, :kiev_phone,
                contacts_attributes: [:id, :contact_type, :value, :_destroy],
                partners_attributes: [:id, :url, :logo, :_destroy]

  menu label: 'Footer Settings', url: -> { url_for [:admin, :footer] }, parent: 'Pages'

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= Footer.instance
    end
  end

  form do |f|
    f.inputs do
      f.input :bratislava_phone
      f.input :moscow_phone
      f.input :kiev_phone
    end

    f.inputs do
      f.has_many :partners,
                  new_record: 'Add Partner',
                  allow_destroy: true do |b|
        b.input :order
        b.input :url
        b.input :logo, as: :file, hint: b.object.logo.present? ? image_tag(b.object.logo.url) : content_tag(:span, 'no logo yet')
      end

      f.has_many :contacts,
                  new_record: 'Add Contact',
                  allow_destroy: true do |b|
        b.input :order
        b.input :contact_type, as: :select, collection: Contact.contact_types.keys
        b.input :value
      end
    end

    actions do
      action :submit
      cancel_link [:admin, :footer]
    end
  end
end