RailsBenchmark::Application.routes.draw do
  get 'benchmark' => 'benchmark#index'
  get 'benchmark/' => 'benchmark#index'
  get 'benchmark/blank' => 'benchmark#blank'
  get 'benchmark/hello_world' => 'benchmark#hello_world'
  get 'benchmark/template' => 'benchmark#template'
  get 'benchmark/fibonacci/:value' => 'benchmark#fibonacci'
end
