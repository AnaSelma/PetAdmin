class Address < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :client

  validates :address, presence: true
  validates :number, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :state, presence: true


  def fae_display_field
    title
  end

  
  def self.for_fae_index
    id
  end

end
