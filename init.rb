# Include hook code here
require 'open-uri'
require 'hpricot'
require 'patches/traverse'
require 'patches/active_resource_patch'
ActionView::Base.send :include, BasicEngineHelper
ActionView::Base.send :include, TinyMceExtensionHelper