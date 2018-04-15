# fauxtechre
Processing script that generates fake autechre songtitles.

Takes existing autechre song titles, calculates bigrams of pairs of letters, and generates new titles based on those bigrams.

Examples:
* fauxtechre: [1-5]
* fauxtechre: [Grounkn]
* fauxtechre: [Matacoipioylase oppeentongere]
* fauxtechre: [Zerd Sterunesubqus]
* fauxtechre: [x32.Cal Stiikrugscar V frnche]
* fauxtechre: [zondeaen(Sum)]
* fauxtechre: [k Tarlvedacal]
* fauxtechre: [Wheatr]
* fauxtechre: [Xy m]
* fauxtechre: [Pertch90101]
* fauxtechre: [Kaeadenges JYum Quch 2plmifuninoreles Drthadetm]
* fauxtechre: [3 Ac]
* fauxtechre: [0nddepli]
* fauxtechre: [apemin]
* fauxtechre: [WNuesedeneiaes]
* fauxtechre: [sef]
* fauxtechre: [Pereliperlane]
* fauxtechre: [Ca When]
* fauxtechre: [Send44]
* fauxtechre: [Zeslenn Ra C]
* fauxtechre: [ad1-1-39]

TODO
there's no reason this is a Processing sketch, a java sketch or a python script would be just as good.

Twitter bot? using AWS Lambda?

save the bigrams, so we don't have to calculate them every time. recalculate if text file is newer than the bigrams file.
