# Include hook code here
ActionView::Base.send :include, BasicEngineHelper
ActionView::Base.send :include, TinyMceExtensionHelper