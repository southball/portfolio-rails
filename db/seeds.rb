# frozen_string_literal: true

def image_path(path)
  ActionController::Base.helpers.image_path(path)
end

technology_react = Technology.create! name: 'React',
                                      slug: 'react',
                                      icon_url: image_path('technologies/react.svg'),
                                      url: 'https://reactjs.org/'

technology_redux = Technology.create! name: 'Redux',
                                      slug: 'redux',
                                      icon_url: image_path('technologies/redux.svg'),
                                      url: 'https://redux.js.org/'

technology_bootstrap = Technology.create! name: 'Bootstrap',
                                          slug: 'bootstrap',
                                          icon_url: image_path('technologies/bootstrap.svg'),
                                          url: 'https://getbootstrap.com/'

technology_mui = Technology.create! name: 'MUI',
                                    slug: 'mui',
                                    icon_url: image_path('technologies/mui.svg'),
                                    url: 'https://mui.com/'

technology_rails = Technology.create! name: 'Ruby on Rails',
                                      slug: 'rails',
                                      icon_url: image_path('technologies/rails.jpg'),
                                      url: 'https://rubyonrails.org/'

technology_ansible = Technology.create! name: 'Ansible',
                                        slug: 'ansible',
                                        icon_url: image_path('technologies/ansible.svg'),
                                        url: 'https://www.ansible.com/'

technology_docker = Technology.create! name: 'Docker',
                                       slug: 'docker',
                                       icon_url: image_path('technologies/docker.png'),
                                       url: 'https://www.docker.com/'

technology_next_js = Technology.create! name: 'Next.js',
                                        slug: 'next-js',
                                        icon_url: image_path('technologies/next-js.svg'),
                                        url: 'https://nextjs.org/'

project_portfolio_rails = Project.create! title: 'Portfolio',
                                          slug: 'portfolio-rails',
                                          description: 'This portfolio website.',
                                          technologies: [technology_rails, technology_bootstrap, technology_docker]
project_portfolio_rails.urls.create! title: 'GitHub',
                                     url: 'https://github.com/southball/portfolio-rails'
project_portfolio_rails.urls.create! title: 'Website',
                                     url: 'https://portfolio.southball.dev/'
project_portfolio_rails.screenshots.create! url: image_path('screenshots/portfolio.png')

project_react_redux_mui_todo = Project.create! title: 'React-Redux-MUI Todo',
                                               slug: 'react-redux-mui-todo',
                                               description: 'A To-Do app created with React, Redux and MUI.',
                                               technologies: [technology_next_js, technology_react, technology_redux, technology_mui]
project_react_redux_mui_todo.urls.create! title: 'GitHub',
                                          url: 'https://github.com/southball/react-redux-mui-todo'

project_ansible = Project.create! title: 'Ansible Playbooks',
                                  slug: 'ansible-playbooks',
                                  description: 'Ansible playbooks written to automate deployment.',
                                  technologies: [technology_ansible, technology_docker]
project_ansible.urls.create! title: 'GitHub',
                             url: 'https://github.com/southball/ansible'

project_blog = Project.create! title: 'Blog',
                               slug: 'blog',
                               description: 'A blog built with Next.js using SSG.',
                               technologies: [technology_next_js, technology_react, technology_mui, technology_docker]
project_blog.urls.create! title: 'GitHub',
                          url: 'https://github.com/southball/blog'
project_blog.urls.create! title: 'Website',
                          url: 'https://blog.southball.dev'
