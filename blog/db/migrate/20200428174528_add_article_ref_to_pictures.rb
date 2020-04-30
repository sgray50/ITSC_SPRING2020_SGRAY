class AddArticleRefToPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :article, foreign_key: true
  end
end
