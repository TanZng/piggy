class ApplicationService
  def self.call(*args, &block)
    new(*args, &block).call
  end

  def load_financial_object_class(current_type)
    "FinancialObjects::#{current_type}".split('::').inject(Object) { |obj, type| obj.const_get type }
  end

  def load_financial_factory(current_type)
    "FinancialObjects::#{current_type}sFactory".split('::').inject(Object) { |obj, type| obj.const_get type }
  end

end