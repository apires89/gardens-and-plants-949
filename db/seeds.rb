Plant.destroy_all
Garden.destroy_all
Tag.destroy_all


Garden.create!(name: "Parque da Cidade",
banner_url:"https://parquecidadedoporto.com/images/parquecidadedoporto.com/slideshow/desporto-ao-ar-livre.jpg")

Garden.create!(name: "Jardim do Morro",
banner_url:"https://2.bp.blogspot.com/-XVEZBZ4N_30/Wbrn7kw1_EI/AAAAAAABFIc/QowrcKLiomg1Pcyk9f66FlIrXeTn6UJFQCLcBGAs/s1600/jardim%2Bdo%2Bmorro%2B11.jpg")


Plant.create!(
  name: "Monstera",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: Garden.last
)

Plant.create!(
  name: "Philo",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: Garden.last
)

Plant.create!(
  name: "Dieff",
  image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: Garden.first
)

names = %w(flower tree plant fruit fern)

names.each do |name|
  Tag.create!(name: name)
end
