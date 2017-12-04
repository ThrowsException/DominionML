start=2010-10-11
end=2013-03-15

while [ "$(date -d $start +%s)" -le "$(date -d $end +%s)" ]; do
	echo $start
	echo "https://dominion.isotropic.org/gamelog/$(date -d $start +%Y)/$(date -d $start +%Y%m%d).tar.bz2"
	curl "https://dominion.isotropic.org/gamelog/$(date -d $start +%Y)/$(date -d $start +%Y%m%d).tar.bz2" -o $start
	start=$(date -I -d "$start + 1 day")
done
