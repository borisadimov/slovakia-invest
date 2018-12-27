ActiveAdmin.register ContactsPage do
  permit_params contacts_attributes: [:id, :contact_type, :value, :_destroy]

  menu label: 'Contacts', url: -> { url_for [:admin, :contacts_page] }

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= ContactsPage.instance
    end
  end

  form do |f|
    f.inputs 'Contacts' do
      f.has_many :contacts,
                  new_record: 'Add Contact',
                  allow_destroy: true do |b|
        b.input :order
        b.input :contact_type, as: :select, collection: Contact.contact_types.keys
        b.input :value
      end
    end

    f.actions do
      action :submit
      cancel_link [:admin, :contacts_page]
    end
  end
end
