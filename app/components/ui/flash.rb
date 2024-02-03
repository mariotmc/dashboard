module UI
  class Flash < Base
    def initialize(notice:)
      @notice = notice
    end

    private
      attr_reader :notice
  end
end
