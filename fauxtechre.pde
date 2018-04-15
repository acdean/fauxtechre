// fauxtechre
// creates fake autechre track titles based on existing ones

import java.util.Set;

HashMap<String, String> bigrams;

void setup() {
  size(400, 400);
  
  String[] titles = loadStrings("autechre.txt");
  bigrams = initialiseBigrams(titles);
}

HashMap<String, String> initialiseBigrams(String[] titles) {
  HashMap<String, String> output = new HashMap<String, String>();
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
      String key = "" + title.charAt(i);
      String next = "" + title.charAt(i + 1);
      if (output.get(key) == null) {
//        println("Creating ", key);
        output.put(key, "");
      }
//      println("Adding ", next, " to ", key);
      output.replace(key, output.get(key) + next);
//      println(output.get(key));
    }
    // debug
//    for (String key : output.keySet()) {
//      println(key, ":", "[" + output.get(key) + "]");
//    }
  }
  return output;
}

void draw() {
  String output;
  do {
    // passing this in despite it being global...
    output = generate(bigrams);
  } while (output.length() < 3);
  println("fauxtechre: [ " + output + " ]");
  noLoop();
}

// pick a random letter. pick a successor from bigram list, repeat until newline
String generate(HashMap<String, String> input) {
  String output = "";
  // the keys as a list
  ArrayList<String> list = new ArrayList(input.keySet());
  // random key from list, but not punctuation
  String current;
  do {
    current = list.get((int)random(list.size()));
  } while ("_,&. ()/?-\n".indexOf(current) != -1);
  output += current;
  char next;
  do {
    String pool = input.get(current);
    next = pool.charAt((int)random(pool.length()));
    current = "" + next;
    output += current;
  } while (next != '\n');
  // remove trailing newline
  output = output.substring(0, output.length() - 1);
  // fix up ()s
  if (output.indexOf("(") != -1 && output.indexOf(")") == -1) {
    output += ")"; // add closing ) at end
  }
  if (output.indexOf("(") == -1 && output.indexOf(")") != -1) {
    output = "(" + output; // add opening ( at beginning 
  }
  return output;
}

void keyPressed() {
  redraw();
}