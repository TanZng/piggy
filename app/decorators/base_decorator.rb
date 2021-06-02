require 'delegate'

class BaseDecorator < SimpleDelegator
  def initialize(base, view_context)
    super(base)
    @object = base
    @view_context = view_context
  end

  private

  def self.decorates(name)
    define_method(name) do
      @object
    end
  end

  def _h
    @view_context
  end
end