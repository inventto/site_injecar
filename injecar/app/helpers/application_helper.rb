module ApplicationHelper
  def menu_refinery_top
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.css = "right"
    presenter
  end

  def menu_refinery_footer
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    p ">"*80
    p presenter.inspect
    p "*"*100
    presenter.css = "home-social"
    #presenter.ul_css = "home-social"
    #presenter.li_css = cycle("fi-web", "fi-telephone", "fi-calendar", "fi-map")
    presenter
  end
end
