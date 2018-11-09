ActiveAdmin.register Service do
  permit_params :title_ru, :text_ru, :videolink_ru,
                :title_en, :text_en, :videolink_en,
                :title_uk, :text_uk, :videolink_uk,
                facts_attributes: [:id, :text_ru, :text_en, :text_uk, :logo, :_destroy],
                reviews_attributes: [
                  :id,
                  :avatar,
                  :name_ru, :name_en, :name_uk,
                  :description_ru, :description_en, :description_uk,
                  :text_ru, :text_en, :text_uk,
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
        f.inputs do
          f.input :title_ru
          f.input :text_ru
          f.input :videolink_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :text_en
          f.input :videolink_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :text_uk
          f.input :videolink_uk
        end
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

    f.inputs 'Reviews' do
      f.has_many :reviews,
                  new_record: 'Add Review',
                  allow_destroy: true do |b|
        b.input :avatar, as: :file, hint: b.object.avatar.present? ? image_tag(b.object.avatar.url) : content_tag(:span, 'no avatar yet')
        b.input :name_ru
        b.input :name_en
        b.input :name_uk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
        b.input :text_ru
        b.input :text_en
        b.input :text_uk
      end
    end

    f.actions
  end
end
