ActiveAdmin.register LandingPage do
  permit_params :title_ru, :title_en, :title_uk, :title_sk,
                :subtitle_ru, :subtitle_en, :subtitle_uk, :subtitle_sk,
                :meta_title_ru, :meta_title_en, :meta_title_uk,
                :meta_description_ru, :meta_description_en, :meta_description_uk,
                :about_block_text_ru, :about_block_text_en, :about_block_text_uk, :about_block_text_sk,
                features_attributes: [
                  :id, :order,
                  :from, :to,
                  :unit_ru, :unit_en, :unit_uk, :unit_sk,
                  :description_ru, :description_en, :description_uk, :description_sk,
                  :_destroy
                ],
                reviews_attributes: [
                  :id, :order,
                  :name_ru, :name_en, :name_uk, :name_sk,
                  :description_ru, :description_en, :description_uk, :description_sk,
                  :text_ru, :text_en, :text_uk, :text_sk,
                  :avatar,
                  :_destroy
                ]


  menu label: 'Landing', url: -> { url_for [:admin, :landing_page] }

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= LandingPage.instance
    end
  end

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :title_ru
          f.input :subtitle_ru
          f.input :about_block_text_ru
        end

        f.inputs 'Meta' do
          f.input :meta_title_ru
          f.input :meta_description_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :subtitle_en
          f.input :about_block_text_en
        end

        f.inputs 'Meta' do
          f.input :meta_title_en
          f.input :meta_description_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :subtitle_uk
          f.input :about_block_text_uk
        end

        f.inputs 'Meta' do
          f.input :meta_title_uk
          f.input :meta_description_uk
        end
      end

      tab 'Slovak' do
        f.inputs do
          f.input :title_sk
          f.input :subtitle_sk
          f.input :about_block_text_sk
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
        b.input :avatar, as: :file, hint: b.object.avatar.present? ? image_tag(b.object.avatar.url) : content_tag(:span, 'no avatar yet')
        b.input :link
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

    actions do
      action :submit
      cancel_link [:admin, :landing_page]
    end
  end
end
