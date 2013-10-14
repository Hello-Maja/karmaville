require 'benchmark'

class ApplicationController < ActionController::Base
include Benchmark
  protect_from_forgery
end
