Rails.application.routes.draw do
  # Endpoints
  get 'sum'      => 'calculator#sum'
  get 'subtract' => 'calculator#subtract'
  get 'multiply' => 'calculator#multiply'
  get 'divide'   => 'calculator#divide'
  get 'pow'      => 'calculator#pow'
  get 'sqrt'     => 'calculator#sqrt'
end
