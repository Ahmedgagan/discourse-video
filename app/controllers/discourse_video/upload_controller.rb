module DiscourseVideo
  class UploadController < ::ApplicationController
    requires_plugin DiscourseVideo

    #before_action :ensure_logged_in, :check_upload_permission, except: [:callback]

    #skip_before_action :check_xhr,
    #                  :preload_json,
    #                  :verify_authenticity_token,
    #                  :redirect_to_login_if_required,
    #                  only: [:callback]

    def create
      name = params.require(:name)
      filename = params.require(:filename)

      hijack do
        #api = API.create(name)
        #video = Brightcove::Video.new(video_id: api.id, state: Brightcove::Video::PENDING, user: current_user)
        begin
          #api.move_to_folder(SiteSetting.brightcove_folder_id) unless SiteSetting.brightcove_folder_id.blank?
          #ingest_info = api.get_ingest_url(filename)
          #video.secret_access_key = ingest_info[:secret_access_key]
          #video.api_request_url = ingest_info[:api_request_url]
        ensure
          #video.save!
        end

        render json: {
          #video_id: video.video_id,
          #bucket: ingest_info[:bucket],
          #object_key: ingest_info[:object_key],
          #access_key_id: ingest_info[:access_key_id],
          #session_token: ingest_info[:session_token]
        }
      end
    end
  end
end
