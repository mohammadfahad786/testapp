class PrinNumberJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts("Number is :  #{args}")
  end
end
