xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Programistok"
    xml.description "Comiesięczne spotkania programistów"
    xml.link meetings_url

    for meeting in @meetings
      xml.item do
        xml.title meeting.title
        xml.description meeting.content
        xml.pubDate meeting.created_at.to_s
        xml.link meeting_url(meeting)
       # xml.guid meeting_url(meeting)
      end
    end
  end
end
