# frozen_string_literal: true

def image_path(path)
  ActionController::Base.helpers.image_path(path)
end

technology_react = Technology.create! name: 'React',
                                      slug: 'react',
                                      icon_url: image_path('react.svg'),
                                      url: 'https://reactjs.org/'

technology_redux = Technology.create! name: 'Redux',
                                      slug: 'redux',
                                      icon_url: image_path('redux.svg'),
                                      url: 'https://redux.js.org/'

technology_mui = Technology.create! name: 'MUI',
                                    slug: 'mui',
                                    icon_url: image_path('mui.svg'),
                                    url: 'https://mui.com/'

technology_rails = Technology.create! name: 'Ruby on Rails',
                                      slug: 'rails',
                                      icon_url: image_path('rails.jpg'),
                                      url: 'https://rubyonrails.org/'

project_portfolio_rails = Project.create! title: 'Portfolio',
                                          slug: 'portfolio-rails',
                                          description: 'This portfolio website.',
                                          technologies: [technology_rails]
project_portfolio_rails.urls.create! title: 'GitHub',
                                     url: 'https://github.com/southball/portfolio-rails'
project_portfolio_rails.screenshots.create! url: image_path('screenshots/portfolio.png')

project_react_redux_mui_todo = Project.create! title: 'React-Redux-MUI Todo',
                                               slug: 'react-redux-mui-todo',
                                               description: 'A To-Do app created with React, Redux and MUI.',
                                               technologies: [technology_react, technology_redux, technology_mui]
project_react_redux_mui_todo.urls.create! title: 'GitHub',
                                          url: 'https://github.com/southball/react-redux-mui-todo'
