class RemovePostUrlFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :post_url, :string
  end
end
