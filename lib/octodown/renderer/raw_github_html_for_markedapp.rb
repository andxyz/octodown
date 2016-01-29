require 'erb'
require 'octodown/renderer/renderable'

module Octodown
  module Renderer
    class RawGithubHTMLForMarkedapp
      include Octodown::Support
      include Renderable

      attr_reader :rendered_markdown, :filepath, :options

      def initialize(rendered_markdown, options = {})
        @rendered_markdown = rendered_markdown
        @options = options
        @filepath = File.join parent_dir, 'template', 'raw_github_html_for_markedapp.html.erb'
      end

      def content
        template_text = File.read filepath
        erb_template = ERB.new template_text
        erb_template.result binding
      end

      def title
        'Octodown For Marked 2.App Preview'
      end

      def stylesheet
        tagger assets_dir("#{options[:style]}.css"), :style
      end

      def present
        puts content
      end

      private

      def tagger(name, tag)
        "<#{tag}>#{File.read name}</#{tag}>"
      end

      def assets_dir(*args)
        File.join Octodown.root, 'assets', args
      end

      def parent_dir
        current_file = File.dirname __FILE__
        File.expand_path '..', current_file
      end
    end
  end
end
