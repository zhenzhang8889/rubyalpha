class Knowledge < ActiveRecord::Base
  attr_accessible :author, :companies, :date_created, :description, :eidts, :notes, :product, :related_articles, :related_devices, :related_tickets, :screenshots, :software, :topic, :videos
end
