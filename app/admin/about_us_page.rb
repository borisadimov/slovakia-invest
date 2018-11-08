ActiveAdmin.register AboutUsPage do
  permit_params :title_ru, :title_en, :title_uk,
                :text_ru, :text_en, :text_uk

  menu label: 'About Us', url: -> { url_for [:admin, :about_us_page] }

  actions :show, :edit, :update

  controller do
    defaults singleton: true

    def resource
      @resource ||= AboutUsPage.instance
    end
  end

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :title_ru
          f.input :text_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :text_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :text_uk
        end
      end
    end

    f.actions do
      action :submit
      cancel_link [:admin, :about_us_page]
    end
  end
end
