# Include hook code here
require 'hpricot'
require 'patches/traverse'
require 'patches/active_resource'
ActionView::Base.send :include, BasicEngineHelper
ActionView::Base.send :include, TinyMceExtensionHelper