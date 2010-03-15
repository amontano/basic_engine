# Methods added to this helper will be available to all templates in the application.
module BasicEngineHelper
  def stylesheet_files
    ['authenticated_system', 'base', 'language_support']
  end
  
  def javascript_files
    [:defaults]
  end
  
  def stylesheets
    return stylesheet_link_tag(*stylesheet_files)
  end
  
  def javascripts
    return javascript_include_tag(*javascript_files)
  end
  
  def loading_animation_script(id)
    "$(\'##{id}\').css(\'background\', \'url(http://www.thlib.org/global/images/ajax-loader.gif) no-repeat center right\')"
  end

  def reset_animation_script(id)
    # "$(\'##{id}\').css(\'background\', \'none\')"
    ''
  end
  
  def header(*args)
    render :partial => 'main/header'
  end
  
  def footer
    render :partial => 'main/footer'
  end
end
