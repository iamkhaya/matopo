class Attachment < ApplicationRecord
  belongs_to :offering
  mount_uploader :file, AttachmentUploader
end
