# frozen_string_literal: true

require 'rails/generators/erb/component_generator'

module Slim
  module Generators
    class ComponentGenerator < Erb::Generators::ComponentGenerator
      source_root File.expand_path('templates', __dir__)
      class_option :sidecar, type: :boolean, default: false

      def copy_view_file
        template 'component.html.slim', destination
      end

      private

      def destination
        if options['sidecar']
          File.join('app/components', class_path, file_name, 'component.html.slim')
        else
          File.join('app/components', class_path, "#{file_name}_component.html.slim")
        end
      end

      def file_name
        @_file_name ||= super.sub(/_component\z/i, '')
      end
    end
  end
end
