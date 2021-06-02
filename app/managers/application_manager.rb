class ApplicationManager
  def create(params)
    raise NotImplementedError
  end

  def update(params)
    raise NotImplementedError
  end

  def index(user)
    raise NotImplementedError
  end

  def delete(params)
    raise NotImplementedError
  end
end