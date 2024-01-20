module Ui
  class TopNav < Base
    def initialize(active:)
      @active = active
    end

    def desktop_css(nav_item)
      if nav_item == active
        active_desktop_css
      else
        inactive_desktop_css
      end
    end

    def mobile_css(nav_item)
      if nav_item == active
        active_mobile_css
      else
        inactive_mobile_css
      end
    end

    private
      attr_reader :active

      def active_desktop_css
        "h-fit inline-flex items-center px-2.5 py-1.5 bg-indigo-600 text-sm font-medium text-white rounded-md focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
      end

      def inactive_desktop_css
        "h-fit inline-flex items-center px-2.5 py-1.5 text-sm font-medium text-gray-500 rounded-md hover:bg-indigo-100 hover:text-gray-700 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
      end

      def active_mobile_css
        "block border-l-4 border-indigo-500 bg-indigo-50 py-2 pl-3 pr-4 text-base font-medium text-indigo-700"
      end

      def inactive_mobile_css
        "block border-l-4 border-transparent py-2 pl-3 pr-4 text-base font-medium text-gray-500 hover:border-gray-300 hover:bg-gray-50 hover:text-gray-700"
      end
  end
end
