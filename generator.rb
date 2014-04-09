
colors_data = []

header_template = <<TEMPLATE
+ (UIColor *)css@nameColor;

TEMPLATE

implementation_template = <<TEMPLATE
+ (UIColor *)css@nameColor
{
    return [UIColor colorWithRed:@red green:@green blue:@blue alpha:1.0];
}

TEMPLATE

File.readlines("css_colors.txt").each do |line|
  name = line.split(' ')[0]
  values = line.split(' ')[-1].split(',')
  red = values[0]
  green = values[1]
  blue = values[2]
  colors_data.push( { :name => name, :red => red, :green => green, :blue => blue } )
end

colors_data.each do |color|
  puts header_template.gsub '@name', color[:name].capitalize
end

colors_data.each do |color|
  puts implementation_template
    .gsub( '@name', color[:name].capitalize )
    .gsub( '@red', "#{color[:red].to_f / 255.0}" )
    .gsub( '@green', "#{color[:green].to_f / 255.0}" )
    .gsub( '@blue', "#{color[:blue].to_f / 255.0}" )
end

colors_data.each do |color|
  puts "@\"#{color[:name].capitalize}\","
end
