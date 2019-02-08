ActiveAdmin.register Article do
  permit_params :order,
                :title_ru, :title_en, :title_uk,
                :content_ru, :content_en, :content_uk,
                :meta_title_ru, :meta_title_en, :meta_title_uk,
                :meta_description_ru, :meta_description_en, :meta_description_uk,
                :og_title_ru, :og_title_en, :og_title_uk,
                :og_description_ru, :og_description_en, :og_description_uk,
                :meta_keywords, :og_type, :og_image, :og_url,
                :service_id,
                post_ids: [],
                employee_ids: [],
                prices_attributes: [
                  :id, :order,
                  :title_ru, :title_en, :title_uk,
                  :description_ru, :description_en, :description_uk,
                  :value,
                  :_destroy
                ]

  menu priority: 2

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
          f.input :content_ru, as: :froala_editor, input_html: {data: {options: {imageUploadURL: '/upload_image'}}}
        end

        f.inputs 'Meta' do
          f.input :meta_title_ru
          f.input :meta_description_ru
          f.input :og_title_ru
          f.input :og_description_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :content_en, as: :froala_editor, input_html: {data: {options: {imageUploadURL: '/upload_image'}}}
        end

        f.inputs 'Meta' do
          f.input :meta_title_en
          f.input :meta_description_en
          f.input :og_title_en
          f.input :og_description_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :content_uk, as: :froala_editor, input_html: {data: {options: {imageUploadURL: '/upload_image'}}}
        end

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

    f.inputs 'Prices' do
      f.has_many :prices,
                 new_record: 'Add Price',
                 allow_destroy: true do |b|
        b.input :order
        b.input :title_ru
        b.input :description_ru
        b.input :title_en
        b.input :description_en
        b.input :title_uk
        b.input :description_uk
        b.input :value
      end
    end

    f.inputs 'Associations' do
      f.input :service_id, as: :select, collection: Service.all.map { |s| [s.title, s.id] }, include_blank: false
      f.input :post_ids, as: :select, input_html: { multiple: true, class: 'chosen-select' }, collection: Post.all
      f.input :employee_ids, as: :select, input_html: { multiple: true, class: 'chosen-select' }, collection: Employee.all
    end

    f.actions
  end
end
