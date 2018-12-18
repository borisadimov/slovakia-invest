ActiveAdmin.register Article do
  permit_params :title_ru, :title_en, :title_uk,
                :content_ru, :content_en, :content_uk,
                :service_id,
                post_ids: [],
                prices_attributes: [
                  :id,
                  :title_ru, :title_en, :title_uk,
                  :description_ru, :description_en, :description_uk,
                  :value,
                  :_destroy
                ]

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  form do |f|
    tabs do
      tab 'Russian' do
        f.inputs do
          f.input :title_ru
          f.input :content_ru, as: :froala_editor
        end
      end

      tab 'English' do
        f.inputs do
          f.input :title_en
          f.input :content_en, as: :froala_editor
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :title_uk
          f.input :content_uk, as: :froala_editor
        end
      end
    end

    f.inputs 'Prices' do
      f.has_many :prices,
                 new_record: 'Add Price',
                 allow_destroy: true do |b|
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
      f.input :post_ids, as: :check_boxes, collection: Post.all
    end

    f.actions
  end
end
