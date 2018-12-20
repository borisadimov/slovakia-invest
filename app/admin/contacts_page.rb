ActiveAdmin.register ContactsPage do
  permit_params :page_title_ru, :page_title_en, :page_title_uk,
                :employees_title_ru, :employees_title_en, :employees_title_uk,
                :contacts_title_ru, :contacts_title_en, :contacts_title_uk,
                :map_coords,
                contacts_attributes: [:id, :contact_type, :value, :_destroy]

  menu label: 'Contacts', url: -> { url_for [:admin, :contacts_page] }

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= ContactsPage.instance
    end
  end

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :page_title_ru
          f.input :employees_title_ru
          f.input :contacts_title_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :page_title_en
          f.input :employees_title_en
          f.input :contacts_title_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :page_title_uk
          f.input :employees_title_uk
          f.input :contacts_title_uk
        end
      end
    end

    f.inputs 'Contacts' do
      f.has_many :contacts,
                  new_record: 'Add Contact',
                  allow_destroy: true do |b|
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
