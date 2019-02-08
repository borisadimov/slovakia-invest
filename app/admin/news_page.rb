ActiveAdmin.register NewsPage do
  permit_params :meta_title_ru, :meta_title_en, :meta_title_uk,
                :meta_description_ru, :meta_description_en, :meta_description_uk,
                :og_title_ru, :og_title_en, :og_title_uk,
                :og_description_ru, :og_description_en, :og_description_uk,
                :meta_keywords, :og_type, :og_image, :og_url
  
  menu label: 'News', url: -> { url_for [:admin, :news_page] }, parent: 'Pages'

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= NewsPage.instance
    end
  end

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs 'Meta' do
          f.input :meta_title_ru
          f.input :meta_description_ru
          f.input :og_title_ru
          f.input :og_description_ru
        end
      end

      tab 'English' do
        f.inputs 'Meta' do
          f.input :meta_title_en
          f.input :meta_description_en
          f.input :og_title_en
          f.input :og_description_en
        end
      end

      tab 'Ukranian' do
        f.inputs 'Meta' do
          f.input :meta_title_uk
          f.input :meta_description_uk
          f.input :og_title_uk
          f.input :og_description_uk
        end
      end
    end

    f.inputs 'Meta' do
      f.input :meta_keywords
      f.input :og_type
      f.input :og_image, as: :file, hint: f.object.og_image.present? ? image_tag(f.object.og_image.url) : content_tag(:span, 'no avatar yet')
      f.input :og_url
    end

    actions do
      action :submit
      cancel_link [:admin, :news_page]
    end
  end
end
