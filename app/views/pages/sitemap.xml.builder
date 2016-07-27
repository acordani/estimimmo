xml.instruct! :xml, :version => "1.0"
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  for post in @flats do
    xml.url do
      xml.loc flat_url(flat)
      xml.lastmod post.updated_at.to_date
      xml.changefreq "monthly"
      xml.priority "0.5"
    end
  end
end