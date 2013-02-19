require 'resque'
require 'resque_scheduler'
require './lib/handler'

class EnqueueController < ApplicationController
  def enqueue
    t = TestClass.create

    puts "putting #{t} with #{t.created_at} onto queue"
    Resque.enqueue_in(60.seconds, Handler, t.id)
  end
end
