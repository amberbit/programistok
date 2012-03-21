xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Programistok"
    xml.description "Comiesięczne spotkania programistów"
    xml.link stories_url

    for story in @stories
      xml.item do
        xml.title story.title
        xml.description story.content
        xml.pubDate story.created_at.to_s
        xml.link story_url(story)
        xml.guid story_url(story)
      end
    end
  end
end
