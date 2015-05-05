module Api
  class TransfersController < Api::BaseController

    private

      def transfer_params
        params.require(:transfer).permit(:title)
      end

      def query_params
        # this assumes that an album belongs to an artist and has an :artist_id
        # allowing us to filter by this
        params.permit(:artist_id, :title)
      end

  end
end