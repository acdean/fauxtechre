// fauxtechre
// creates fake autechre track titles based on existing ones

import java.util.Set;

String[] titles;
HashMap<String, String> bigrams = new HashMap<String, String>();

void setup() {
  size(400, 400);
  
  titles = loadStrings("autechre.txt");
  
  // create bigrams
  for (String title : titles) {
    if (title.startsWith("#")) {
      // ignore comments
      continue;
    }
    // update bigrams using the string
//    println("Title: ", title);
    // add a newline for terminator
    title += "\n";
    for (int i = 0 ; i < title.length() - 1 ; i++) {
//      println(i);
      char ch = title.charAt(i);
      String key = "" + ch;
      char next = title.charAt(i + 1);
      if (bigrams.get(key) == null) {
//        println("Creating ", key);
        bigrams.put(key, "");
      }
//      println("Adding ", next, " to ", key);
      bigrams.replace(key, bigrams.get(key) + next);
//      println(bigrams.get("" + ch));
    }
    // debug
//    for (String key : bigrams.keySet()) {
//      println(key, ":", "[" + bigrams.get(key) + "]");
//    }
  }
}

void draw() {
  // generate. pick a random letter. pick a successor from bigram list, repeat until newline
  String output = "";
  // the keys as a list
  ArrayList<String> list = new ArrayList(bigrams.keySet());
  // random key from list
  String current;
  do {
    current = list.get((int)random(list.size()));
  } while ("&. ()/?-\n".indexOf(current) != -1);
  output += current;
  char next;
  do {
    String pool = bigrams.get(current);
    next = pool.charAt((int)random(pool.length()));
    current = "" + next;
    output += current;
  } while (next != '\n');
  println("fauxtechre: [" + output.substring(0, output.length() - 1) + "]");
  noLoop();
}

void keyPressed() {
  redraw();
}