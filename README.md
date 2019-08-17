# README
<h3>Cоздание проекта:</h3>
<code>rails new <b>name of project</b></code><br>
<code>bundle install </code>- установка зависимостей (Gemfile)<br>
<code>rails server </code> - старт сервера<br>
<code>rails generate controller <b>name of controller</b> </code>- создание контроллера</li><br>
<h3>Создание шаблонов и маршрутов:</h3>
views/<b>name of controller</b>/index.html.erb - создание шаблона для контроллера <br>
config/routes.rb -> <br>
<code>root 'posts#index', as: 'home' </code>  -  '<b>name of controller</b>#method in controller' - создание корневого маршрута <br>
<code>get 'about' => 'pages#about'  </code>  -   get ‘part of url’ => ‘controller name#method in controller’ - создание маршрута обработчика по url <br>
<code>resources :posts </code> - создает необходимые url адреса для работы с ресурсом (index, create, new, edit, show, update, destroy - контроллеры) для url 
<code>rake routes</code> - посмотреть все существующие url

https://mkdev.me/posts/vsyo-chto-nuzhno-znat-o-routes-params-i-formah-v-rails
<h3>Cоздание форм и моделей:</h3>
<code><%= form_for :post, url: posts_path do |f| %></code> - используем form_for, где :post - название переменной через которую мы будем обращаться к элементам формы, url: posts_path - на url на котором будет происходить сохранение данных, f - переменная через которую мы будем делать поля.<br>
<code>rails generate model Post title:string body:text</code> - создание модели<br>
<code>rake db:migrate</code> - миграция (создание таблиц в бд)<br>
Добавление стилей:<br>
views/layouts/application.html.erb<br>