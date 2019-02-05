SitemapGenerator::Sitemap.default_host = "http://www.slovakiainvest.com"
SitemapGenerator::Sitemap.create_index = false

SitemapGenerator::Sitemap.create do
  add '/pages/prices'
  add '/pages/news'
  add '/pages/about_us'
  add '/pages/contacts'

  Service.find_each do |service|
    add service_path(service), lastmod: service.updated_at
  end

  Article.find_each do |article|
    add article_path(article), lastmod: article.updated_at
  end

  Post.find_each do |post|
    add post_path(post), lastmod: post.updated_at
  end
end
