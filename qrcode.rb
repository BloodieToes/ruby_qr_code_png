require 'rqrcode_png'

puts "Enter the QR code data"
data = gets.chomp

qrcode = RQRCode::QRCode.new(data)

size = 250

png = qrcode.as_png(size: size)

File.open('qrcodes/qrcode.png', 'wb') { |file| file.write(png) }
