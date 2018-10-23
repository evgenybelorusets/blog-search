task search: :environment do
  Benchmark.bm do |x|
    x.report('basic:') { Post.basic_search('War') }
    x.report('custom:') { Post.search('War') }
  end
end
