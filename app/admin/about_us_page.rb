ActiveAdmin.register AboutUsPage do
  permit_params :content_ru, :content_en, :content_uk

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
          f.input :content_ru, as: :froala_editor
        end
      end

      tab 'English' do
        f.inputs do
          f.input :content_en, as: :froala_editor
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :content_uk, as: :froala_editor
        end
      end
    end

    f.actions do
      action :submit
      cancel_link [:admin, :about_us_page]
    end
  end
end
