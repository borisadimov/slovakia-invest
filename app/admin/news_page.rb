ActiveAdmin.register NewsPage do
  permit_params :meta_title_ru, :meta_title_en, :meta_title_uk,
                :meta_description_ru, :meta_description_en, :meta_description_uk
  
  menu label: 'News', url: -> { url_for [:admin, :news_page] }

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
        end
      end

      tab 'English' do
        f.inputs 'Meta' do
          f.input :meta_title_en
          f.input :meta_description_en
        end
      end

      tab 'Ukranian' do
        f.inputs 'Meta' do
          f.input :meta_title_uk
          f.input :meta_description_uk
        end
      end
    end

    actions do
      action :submit
      cancel_link [:admin, :news_page]
    end
  end
end