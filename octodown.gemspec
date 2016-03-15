# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octodown/version'

Gem::Specification.new do |spec|
  spec.name                  = 'octodown'
  spec.version               = Octodown::VERSION
  spec.authors               = ['Ian Ker-Seymer']
  spec.email                 = ['i.kerseymer@gmail.com']
  spec.summary               = 'GitHub Markdown straight from your shell.'
  spec.homepage              = 'https://github.com/ianks/octodown'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.0'

  spec.files = Dir['{lib,assets,bin}/**/*']
  spec.executables << 'octodown'
  spec.require_paths = ['lib']

  spec.add_dependency 'github-markup',    '~> 1.4', '>= 1.4.0'
  spec.add_dependency 'html-pipeline',    '~> 2.2', '>= 2.2.1'
  spec.add_dependency 'sanitize',         '~> 4.0', '>= 4.0.0'
  spec.add_dependency 'github-markdown',            '~> 0.6.8'
  spec.add_dependency 'rinku',            '~> 1.7', '>= 1.7.2'
  spec.add_dependency 'gemoji',           '~> 2.1', '>= 2.1.0'
  spec.add_dependency 'html-pipeline-rouge_filter', '~> 1.0', '>= 1.0.2'
  spec.add_dependency 'launchy',          '~> 2.4', '>= 2.4.3'
  spec.add_dependency 'rack',             '~> 1.6', '>= 1.6.4'
  spec.add_dependency 'thin',             '~> 1.6', '>= 1.6.4'
  spec.add_dependency 'listen',           '~> 3.0', '>= 3.0.3'
  spec.add_dependency 'faye-websocket',             '~> 0.10.0'
  spec.add_dependency 'pdfkit',                     '~> 0.8.2'

  spec.add_development_dependency 'rspec',     '~> 3.3', '>= 3.3.0'
  spec.add_development_dependency 'rubocop',   '~> 0.34.2'
  spec.add_development_dependency 'bundler',   '~> 1.7'
  spec.add_development_dependency 'rake',      '~> 10.0'
  spec.add_development_dependency 'rack-test', '~> 0.6.3'
  spec.add_development_dependency 'octokit'
end
