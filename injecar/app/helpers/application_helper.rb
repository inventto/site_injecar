module ApplicationHelper
  def menu_refinery_top
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.css = "right"
    presenter
  end

  def menu_refinery_footer
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.css = "home-social"
    presenter
  end
end
