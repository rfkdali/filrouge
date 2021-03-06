module ArticlesHelper

	def articles_content_md(a)
		markdown a.content
	end

	def articles_content_md_truncated(a)
		truncate(articles_content_md(a), length: 300, :escape => false)
	end

	def format_tags(tag)
		tag.map { |e| e.downcase.strip }.join(", ")
	end

end
