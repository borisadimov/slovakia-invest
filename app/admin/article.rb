ActiveAdmin.register Article do
  permit_params :title_ru, :text_ru,
                :title_en, :text_en,
                :title_uk, :text_uk

  form do |f|
    tabs do
      tab 'Russian' do
        f.input :title_ru
        f.input :text_ru
      end

      tab 'English' do
        f.input :title_en
        f.input :text_en
      end

      tab 'Ukranian' do
        f.input :title_uk
        f.input :text_uk
      end
    end

    f.actions
  end
end
