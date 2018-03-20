class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
