#app/views/sitemaps/index.xml.builder
base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
      xml.loc("http://myapp.com")
      xml.changefreq("weekly")
      xml.priority(1.0)
  }
  xml.url{
      xml.loc("http://myapp.com/lands")
      xml.changefreq("daily")
      xml.priority(0.9)
  }
  xml.url{
      xml.loc("http://myapp.com/series")
      xml.changefreq("daily")
      xml.priority(0.9)
  }
  @lands.each do |land|
    xml.url {
      xml.loc "#{land_url(land)}"
      xml.lastmod land.updated_at.strftime("%F")
      xml.changefreq("weekly")
      xml.priority(0.5)
    }
  end
  
end
