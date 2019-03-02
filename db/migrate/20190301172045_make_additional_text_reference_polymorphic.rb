class MakeAdditionalTextReferencePolymorphic < ActiveRecord::Migration[5.0]
  def change
    remove_reference :additional_texts, :service, index: true, foreign_key: true
    add_reference :additional_texts, :has_texts, polymorphic: true, index: true
  end
end
