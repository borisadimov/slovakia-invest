ActiveAdmin.register Service do
  permit_params :order,
                :title_ru, :description_ru, :content_ru,
                :title_en, :description_en, :content_en,
                :title_uk, :description_uk, :content_uk,
                :title_sk, :description_sk, :content_sk,
                features_attributes: [
                  :id, :order,
                  :from, :to,
                  :unit_ru, :unit_en, :unit_uk,
                  :description_ru, :description_en, :description_uk,
                  :_destroy
                ],
                reviews_attributes: [
                  :id, :order,
                  :avatar,
                  :link,
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
    f.inputs 'Order' do
      f.input :order
    end

    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :title_ru
          f.input :description_ru
          f.input :content_ru, as: :froala_editor
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :description_en
          f.input :content_en, as: :froala_editor
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :description_uk
          f.input :content_uk, as: :froala_editor
        end
      end

      tab 'Slovak' do
        f.inputs do
          f.input :title_sk
          f.input :description_sk
          f.input :content_sk, as: :froala_editor
        end
      end
    end

    f.inputs 'Features' do
      f.has_many :features,
                  new_record: 'Add Feature',
                  allow_destroy: true do |b|
        b.input :order
        b.input :from
        b.input :to
        b.input :unit_ru
        b.input :unit_en
        b.input :unit_uk
        b.input :unit_sk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
        b.input :description_sk
      end
    end

    f.inputs 'Reviews' do
      f.has_many :reviews,
                  new_record: 'Add Review',
                  allow_destroy: true do |b|
        b.input :order
        b.input :link
        b.input :avatar, as: :file, hint: b.object.avatar.present? ? image_tag(b.object.avatar.url) : content_tag(:span, 'no avatar yet')
        b.input :name_ru
        b.input :name_en
        b.input :name_uk
        b.input :name_sk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
        b.input :description_sk
        b.input :text_ru
        b.input :text_en
        b.input :text_uk
        b.input :text_sk
      end
    end

    f.actions
  end
end