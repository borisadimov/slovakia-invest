ActiveAdmin.register Post do
  permit_params :title_ru, :title_en, :title_uk, :title_sk,
                :text_ru, :text_en, :text_uk, :text_sk,
                :author_ru, :author_en, :author_uk, :author_sk,
                article_ids: [],
                comments_attributes: [:id, :author, :email, :text, :_destroy]

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :title_ru
          f.input :text_ru
          f.input :author_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :text_en
          f.input :author_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :text_uk
          f.input :author_uk
        end
      end

      tab 'Slovak' do
        f.inputs do
          f.input :title_sk
          f.input :text_sk
          f.input :author_sk
        end
      end
    end

    f.inputs 'Articles' do
      f.input :article_ids, as: :check_boxes, collection: Article.all
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