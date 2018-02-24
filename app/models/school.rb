class School < ApplicationRecord
    has_many:branchs
    #accepts_nested_attributes_for :branchs
    accepts_nested_attributes_for :branchs, allow_destroy: true

    has_attached_file :image ,styles: { medium: "300x300", thumb: "100x100" }
    # Validate content type
    validates_attachment_content_type :image, content_type: /\Aimage/
    # Validate filename
    #validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
    # Explicitly do not validate
    #do_not_validate_attachment_file_type :image

   validates :board, presence: true                    
    validates :area, presence: true
    validates :name, presence:true
    validates :address, presence:true
    validates :phno, presence:true
    validates :phno,   :presence => {:message => 'hello world, bad operation!'},
    :numericality => true,
    :length => { :minimum => 10, :maximum => 15 }            
end
