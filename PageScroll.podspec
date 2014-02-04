Pod::Spec.new do |s|

  s.name         = "PageScroll"
  s.version      = "0.1"
  s.summary      = "Block based callbacks for refreshing data while scrolling."

  s.description  = <<-DESC
                   Block based callbacks for refreshing data while scrolling
                   DESC

  s.homepage     = "http://tippingcanoe.com"
  s.license      = 'MIT'
  s.author       = { "Jeff Friesen" => "j.friesen@tippingcanoe.com" }
  s.platform     = :ios, '5.0'
  s.source       = { :git => "git@github.com:robotafterall/PageScroll.git", :tag => "0.1.1" }
  s.source_files  = 'PageScroll/*.{h,m}'
  s.requires_arc = true

end
