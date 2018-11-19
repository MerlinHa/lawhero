class Case < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  mount_uploaders :documents, PhotoUploader

  private

  def case_params
    params.require(:case).permit(:user_id, :lawyer_id, :status, :title, :description, :request_id, {documents: []})
  end
end
