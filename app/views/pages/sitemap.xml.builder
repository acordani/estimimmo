xml.instruct!
xml.urlset(
  'xmlns'.to_sym => "http://www.sitemaps.org/schemas/sitemap/0.9",
) do
  @lands.each do |f|
    xml.url do
      xml.loc "#{land_url(land)}"
      xml.lastmod land.updated_at.strftime("%F")
    end
  end