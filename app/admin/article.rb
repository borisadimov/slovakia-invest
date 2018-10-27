ActiveAdmin.register Article do
  permit_params :title_ru, :text_ru, :videolink_ru,
                :title_en, :text_en, :videolink_en,
                :title_uk, :text_uk, :videolink_uk,
                :service_id,
                facts_attributes: [:id, :text_ru, :text_en, :text_uk, :logo, :_destroy],
                prices_attributes: [
                  :id,
                  :title_ru, :title_en, :title_uk,
                  :description_ru, :description_en, :description_uk,
                  :package,
                  :value,
                  :_destroy
                ]

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  form do |f|
    tabs do
      tab 'Russian' do
        f.input :title_ru
        f.input :text_ru
        f.input :videolink_ru
      end

      tab 'English' do
        f.input :title_en
        f.input :text_en
        f.input :videolink_en
      end

      tab 'Ukranian' do
        f.input :title_uk
        f.input :text_uk
        f.input :videolink_uk
      end
    end

    f.inputs 'Facts' do
      f.has_many :facts,
                 new_record: 'Add Fact',
                 allow_destroy: true do |b|
        b.input :logo, as: :file, hint: b.object.logo.present? ? image_tag(b.object.logo.url) : content_tag(:span, 'no logo yet')
        b.input :text_ru
        b.input :text_en
        b.input :text_uk
      end
    end

    f.inputs 'Prices' do
      f.has_many :prices,
                 new_record: 'Add Price',
                 allow_destroy: true do |b|
        b.input :title_ru
        b.input :description_ru
        b.input :title_en
        b.input :description_en
        b.input :title_uk
        b.input :description_uk
        b.input :package
        b.input :value
      end
    end

    f.inputs do
      f.input :service_id, as: :select, collection: Service.all.map { |s| [s.title, s.id] }, include_blank: false
    end

    f.actions
  end
end
