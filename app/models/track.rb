class Track < ActiveRecord::Base
  before_create :randomize_file_name
  has_many :tracksegments, :dependent => :destroy
  has_many :points, :through => :tracksegments
  
  validates :title, :description, presence: true
  has_attached_file :gpx, :path => ":rails_root/public/uploads"
  
  
  
  before_save :parse_file
  
  def polyline_points
    self.points.map(&:latlng)
  end
  
  def polyline
    Polylines::Encoder.encode_points(self.polyline_points)
  end
  
  private
  def randomize_file_name
    extension = File.extname(gpx_file_name).downcase
    self.gpx.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
  end
  
  def parse_file
    tempfile = gpx.queued_for_write[:original]
    doc = Nokogiri::XML(tempfile)
    parse_xml(doc)
  end
     
  def parse_xml(doc)
   doc.root.elements.each do |node|
     parse_tracks(node)
   end
  end
     
  def parse_tracks(node)
    if node.node_name.eql? 'trk'
     node.elements.each do |node|
       parse_track_segments(node)
     end
    end
  end
       
  def parse_track_segments(node)
     if node.node_name.eql? 'trkseg'
       tmp_segment = Tracksegment.new
       node.elements.each do |node|
         parse_points(node,tmp_segment)
       end
       self.tracksegments << tmp_segment
     end
   end
         
  def parse_points(node,tmp_segment)
   if node.node_name.eql? 'trkpt'
     tmp_point = Point.new
     tmp_point.latitude = node.attr("lat")
     tmp_point.longitude = node.attr("lon")
     node.elements.each do |node|
       tmp_point.name = node.text.to_s if node.name.eql? 'name'
       tmp_point.elevation = node.text.to_s if node.name.eql? 'ele'
       tmp_point.description = node.text.to_s if node.name.eql? 'desc'
       tmp_point.point_created_at = node.text.to_s if node.name.eql? 'time'
     end
     tmp_segment.points << tmp_point
   end
  end
end
