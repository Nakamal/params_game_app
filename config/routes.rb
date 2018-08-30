Rails.application.routes.draw do
  namespace :api do
    get "/alphabet_soup_url" => "games#alphabet_action"
    get "/guess_url/:my_number" => "games#guess_action"
  end
end
