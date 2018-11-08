ActiveAdmin.register Footer do
  permit_params contacts_attributes: [:id, :contact_type, :value, :_destroy],
                social_network_links_attributes: [:id, :url, :logo, :_destroy]

  menu label: 'Footer Settings', url: -> { url_for [:admin, :footer] }

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= Footer.instance
    end
  end

  form do |f|
    f.inputs do
      f.has_many :contacts,
                  new_record: 'Add Contact',
                  allow_destroy: true do |b|
        b.input :contact_type, as: :select, collection: Contact.contact_types.keys
        b.input :value
      end

      f.has_many :social_network_links,
                  new_record: 'Add Network Link',
                  allow_destroy: true do |b|
        b.input :url
        b.input :logo, as: :file, hint: b.object.logo.present? ? image_tag(b.object.logo.url) : content_tag(:span, 'no logo yet')
      end
    end

    actions do
      action :submit
      cancel_link [:admin, :footer]
    end
  end
end