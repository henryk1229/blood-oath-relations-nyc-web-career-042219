require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bs = Cult.new("bs", "LA", 1999, "B$L")
cs = Cult.new("cs", "LA", 2000, "C4L")
ds = Cult.new("ds", "NYC", 2000, "D$L")
es = Cult.new("es", "NYC", 1999, "E4l")
fs = Cult.new("fs", "LA", 2009, "F$L")

al = Follower.new("al", 21, "opp")
bl = Follower.new("bi", 21, "app")
cl = Follower.new("cl", 19, "cpp")
dl = Follower.new("dl", 28, "dpp")
zl = Follower.new("zl", 30, "zpp")
el = Follower.new("el", 28, "epp")
fl = Follower.new("fl", 28, "epp")
gl = Follower.new("gl", 28, "epp")
hl = Follower.new("hl", 28, "epp")
il = Follower.new("il", 28, "epp")
kl = Follower.new("kl", 28, "epp")

a = BloodOath.new(al, bs, "2019-04-29")
b = BloodOath.new(al, cs, "2019-04-28")
c = BloodOath.new(bl, cs, "2019-04-27")
d = BloodOath.new(bl, ds, "2019-04-26")
e = BloodOath.new(bl, es, "2019-04-25")
f = BloodOath.new(cl, es, "2019-04-24")
g = BloodOath.new(cl, bs, "2019-04-23")
h = BloodOath.new(cl, cs, "2019-04-22")
i = BloodOath.new(dl, bs, "2019-04-21")
j = BloodOath.new(cl, fs, "2019-04-22")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
