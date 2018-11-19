ActiveAdmin.register LandingPage do
  LANDING_PAGE_ITEM_ATTRIBUTES = [
    :id,
    :title_ru, :title_en, :title_uk,
    :description_ru, :description_en, :description_uk,
    :block_type,
    :_destroy
  ]

  permit_params :cooperation_title_ru, :cooperation_title_en, :cooperation_title_uk,
                :about_title_ru, :about_title_en, :about_title_uk,
                :about_text_ru, :about_text_en, :about_text_uk,
                :services_title_ru, :services_title_en, :services_title_uk,
                :services_text_ru, :services_text_en, :services_text_uk,
                :how_work_title_ru, :how_work_title_en, :how_work_title_uk,
                :how_work_text_ru, :how_work_text_en, :how_work_text_uk,
                :profits_title_ru, :profits_title_en, :profits_title_uk,
                :profits_text_ru, :profits_text_en, :profits_text_uk,
                :for_whom_title_ru, :for_whom_title_en, :for_whom_title_uk,
                :for_whom_text_ru, :for_whom_text_en, :for_whom_text_uk,
                :reviews_title_ru, :reviews_title_en, :reviews_title_uk,
                :reviews_text_ru, :reviews_text_en, :reviews_text_uk,
                :partners_title_ru, :partners_title_en, :partners_title_uk,
                :partners_text_ru, :partners_text_en, :partners_text_uk,
                cooperation_facts_attributes: LANDING_PAGE_ITEM_ATTRIBUTES,
                how_work_items_attributes: LANDING_PAGE_ITEM_ATTRIBUTES,
                profit_items_attributes: LANDING_PAGE_ITEM_ATTRIBUTES,
                reviews_attributes: LANDING_PAGE_ITEM_ATTRIBUTES,
                partners_attributes: [:id, :logo, :block_type, :_destroy]


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
          f.input :cooperation_title_ru
          f.input :about_title_ru
          f.input :about_text_ru
          f.input :services_title_ru
          f.input :services_text_ru
          f.input :how_work_title_ru
          f.input :how_work_text_ru
          f.input :profits_title_ru
          f.input :profits_text_ru
          f.input :for_whom_title_ru
          f.input :for_whom_text_ru
          f.input :reviews_title_ru
          f.input :reviews_text_ru
          f.input :partners_title_ru
          f.input :partners_text_ru
        end
      end

      tab 'English' do
        f.inputs do
          f.input :cooperation_title_en
          f.input :about_title_en
          f.input :about_text_en
          f.input :services_title_en
          f.input :services_text_en
          f.input :how_work_title_en
          f.input :how_work_text_en
          f.input :profits_title_en
          f.input :profits_text_en
          f.input :for_whom_title_en
          f.input :for_whom_text_en
          f.input :reviews_title_en
          f.input :reviews_text_en
          f.input :partners_title_en
          f.input :partners_text_en
        end
      end

      tab 'Ukranian' do
        f.inputs do
          f.input :cooperation_title_uk
          f.input :about_title_uk
          f.input :about_text_uk
          f.input :services_title_uk
          f.input :services_text_uk
          f.input :how_work_title_uk
          f.input :how_work_text_uk
          f.input :profits_title_uk
          f.input :profits_text_uk
          f.input :for_whom_title_uk
          f.input :for_whom_text_uk
          f.input :reviews_title_uk
          f.input :reviews_text_uk
          f.input :partners_title_uk
          f.input :partners_text_uk
        end
      end
    end

    f.inputs 'Items' do
      f.has_many :cooperation_facts,
                 new_record: 'Add Cooperation Fact',
                 allow_destroy: true do |b|
        b.object.block_type = :cooperation_fact
        b.input :title_ru
        b.input :title_en
        b.input :title_uk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
      end

      f.has_many :how_work_items,
                 new_record: 'Add HowWork Item',
                 allow_destroy: true do |b|
        b.object.block_type = :how_work_item
        b.input :title_ru
        b.input :title_en
        b.input :title_uk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
      end

      f.has_many :profit_items,
                 new_record: 'Add Profit Item',
                 allow_destroy: true do |b|
        b.object.block_type = :profit_item
        b.input :title_ru
        b.input :title_en
        b.input :title_uk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
      end

    f.has_many :reviews,
                 new_record: 'Add Review',
                 allow_destroy: true do |b|
        b.object.block_type = :review
        b.input :title_ru
        b.input :title_en
        b.input :title_uk
        b.input :description_ru
        b.input :description_en
        b.input :description_uk
      end

      f.has_many :partners,
                  new_record: 'Add Partner',
                  allow_destroy: true do |b|
        b.object.block_type = :partner
        b.input :logo, as: :file, hint: b.object.logo.present? ? image_tag(b.object.logo.url) : content_tag(:span, 'no logo yet')
      end
    end

    actions do
      action :submit
      cancel_link [:admin, :landing_page]
    end
  end
end
