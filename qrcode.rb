require 'rqrcode_png'

data = ARGV[0]
qrcode = RQRCode::QRCode.new(data)
size = 250
png = qrcode.as_png(size: size)

File.open('qrcodes/qrcode.png', 'wb') { |file| file.write(png) }
