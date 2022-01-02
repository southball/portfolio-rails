# frozen_string_literal: true

# rubocop:disable Lint/UselessAssignment

technology_react = Technology.create! name: 'React',
                                      slug: 'react',
                                      icon_url: ActionController::Base.helpers.image_path('react.svg'),
                                      url: 'https://reactjs.org/'

technology_rails = Technology.create! name: 'Ruby on Rails',
                                      slug: 'rails',
                                      icon_url: ActionController::Base.helpers.image_path('rails.jpg'),
                                      url: 'https://rubyonrails.org/'

project_portfolio_rails = Project.create! title: 'Portfolio',
                                          slug: 'portfolio-rails',
                                          description: 'This portfolio website.',
                                          technologies: [technology_rails]
project_portfolio_rails.project_urls.create! title: 'GitHub',
                                             url: 'https://github.com/southball/portfolio-rails'

# rubocop:enable Lint/UselessAssignment
