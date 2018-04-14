# fauxtechre
Processing script that generates fake autechre songtitles.

Takes existing autechre song titles, calculates bigrams of pairs of letters, and generates new titles based on those bigrams.

Examples:
fauxtechre: [deg]
fauxtechre: [Feninssumx)]
fauxtechre: [wbilesse]
fauxtechre: [uxpTis]
fauxtechre: [Y cic]
fauxtechre: [Yum Taditwed 2]
fauxtechre: [Untcad]
fauxtechre: [bqug Raf]
fauxtechre: [Pelyl]
fauxtechre: [bzz E]
fauxtechre: [hab]
fauxtechre: [Zeraleboualenhub]
fauxtechre: [Chorara_f]
fauxtechre: [51]
fauxtechre: [7]
fauxtechre: [Yelalenel BOAcalo]

TODO
there's no reason this is a Processing sketch, a java sketch or a python script would be just as good.

Twitter bot? using AWS Lambda?

save the bigrams, so we don't have to calculate them every time. recalculate if text file is newer than the bigrams file.
