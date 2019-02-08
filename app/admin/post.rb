ActiveAdmin.register Post do
  permit_params :title_ru, :title_en, :title_uk,
                :description_ru, :description_en, :description_uk,
                :text_ru, :text_en, :text_uk,
                :author_ru, :author_en, :author_uk,
                :meta_title_ru, :meta_title_en, :meta_title_uk,
                :meta_description_ru, :meta_description_en, :meta_description_uk,
                :og_title_ru, :og_title_en, :og_title_uk,
                :og_description_ru, :og_description_en, :og_description_uk,
                :meta_keywords, :og_type, :og_image, :og_url,
                article_ids: [],
                comments_attributes: [:id, :author, :email, :text, :_destroy]

  menu priority: 4

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :title_ru
          f.input :description_ru
          f.input :text_ru, as: :froala_editor, input_html: {data: {options: {imageUploadURL: '/upload_image'}}}
          f.input :author_ru
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
          f.input :description_en
          f.input :text_en, as: :froala_editor, input_html: {data: {options: {imageUploadURL: '/upload_image'}}}
          f.input :author_en
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
          f.input :description_uk
          f.input :text_uk, as: :froala_editor, input_html: {data: {options: {imageUploadURL: '/upload_image'}}}
          f.input :author_uk
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

    f.inputs 'Articles' do
      f.input :article_ids, as: :select, input_html: { multiple: true, class: 'chosen-select' }, collection: Article.all
    end

    f.inputs 'Comments' do
      f.has_many :comments,
                  new_record: 'Add Comment',
                  allow_destroy: true do |b|
        b.input :author
        b.input :email
        b.input :text
      end
    end

    f.actions
  end
end
