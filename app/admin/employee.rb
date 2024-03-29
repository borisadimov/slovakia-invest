ActiveAdmin.register Employee do
  permit_params :order,
                :name_ru, :name_en, :name_uk,
                :position_ru, :position_en, :position_uk,
                :description_ru, :description_en, :description_uk,
                :avatar,
                :service_id,
                contacts_attributes: [:id, :contact_type, :value, :telegram, :_destroy]

  menu priority: 3

  form do |f|
    f.inputs 'Order' do
      f.input :order
    end

    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :name_ru
          f.input :position_ru
          f.input :description_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :name_en
          f.input :position_en
          f.input :description_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :name_uk
          f.input :position_uk
          f.input :description_uk
        end
      end
    end

    f.inputs do
      f.input :service_id, as: :select, collection: [nil] + Service.all.each_with_index.map { |s, index|
        [index == 4 ? I18n.t('contacts.management') : s.title, s.id]
      }, include_blank: false
      f.input :avatar, as: :file, hint: f.object.avatar.present? ? image_tag(f.object.avatar.url) : content_tag(:span, 'no avatar yet')
    end

    f.inputs 'Contacts' do
      f.has_many :contacts,
                  new_record: 'Add Contact',
                  allow_destroy: true do |b|
        b.input :value
        b.input :contact_type, as: :select, collection: Contact.contact_types.keys, input_html: { data: { not: 'phone', action: 'hide', target: '.telegram-input' } }
        b.input :telegram, wrapper_html: { class: 'telegram-input' }
      end
    end

    f.actions
  end
end
