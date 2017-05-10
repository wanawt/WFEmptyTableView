Pod::Spec.new do |s|

  s.name         = "WFEmptyTableView"
  s.version      = "0.0.1"
  s.summary      = "A short description of WFEmptyTableView."

  s.description  = <<-DESC
					UITableView 数据源为空 添加站位图
                   DESC

  s.homepage     = "https://github.com/wanawt/WFEmptyTableView"

  s.license      = "MIT"
  s.author             = { "Zhang Weifan" => "374604443@163.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "http://github.com/wanawt/WFEmptyTableView.git", :tag => "#{s.version}" }

  s.source_files  = "WFEmptyTableView/WFEmpty/**/*.{h,m}"
end
