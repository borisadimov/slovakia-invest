ActiveAdmin.register LandingPage do
  permit_params :title_ru, :title_en, :title_uk,
                :subtitle_ru, :subtitle_en, :subtitle_uk,
                :about_block_text_ru, :about_block_text_en, :about_block_text_uk,
                reviews_attributes: [
                  :id,
                  :name_ru, :name_en, :name_uk,
                  :description_ru, :description_en, :description_uk,
                  :text_ru, :text_en, :text_uk,
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
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :subtitle_en
          f.input :about_block_text_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :subtitle_uk
          f.input :about_block_text_uk
        end
      end
    end

    f.inputs 'Reviews' do
      f.has_many :reviews,
                  new_record: 'Add Review',
                  allow_destroy: true do |b|
        b.input :avatar, as: :file, hint: b.object.avatar.present? ? image_tag(b.object.avatar.url) : content_tag(:span, 'no avatar yet')
        b.input :link
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

    actions do
      action :submit
      cancel_link [:admin, :landing_page]
    end
  end
end
