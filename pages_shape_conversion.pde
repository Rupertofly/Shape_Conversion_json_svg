




JSONObject json;
JSONObject shapes;
XML Strings;
void setup(){
  Strings = loadXML("strings.xml");
  int len = Strings.getChildCount();
    json = loadJSONObject("shape_library.json");
  shapes = json.getJSONObject("shapesByID");
  for (int o = 1; o<(len/2);o++){
    int c = (o*2)+1;
    XML wXML = Strings.getChild(c);
    Shapey w = new Shapey(wXML.getString("name"));
    //println(wXML.getContent());
    w.setKey(wXML.getContent());
    w.pr();
    JSONObject work = shapes.getJSONObject(str(w.id));
    println(work.getString("localizationKey"));
    String path = work.getString("shapePath");
    String[] list = {"<svg width=\"800\" height=\"800\" xmlns=\"http://www.w3.org/2000/svg\">","<path d=\""+path+"\"/>","</svg>"};
    saveStrings(w.name+"_"+str(w.id)+"_"+join(w.keywords,"_")+".svg",list);
  }
  //println(Strings.getChild(1));

  int size = shapes.size();
  XML kid = Strings.getChild(1);
  Shapey kidt = new Shapey(kid.getString("name"));
  //kidt.pr();
  /*
  for (int i = 0;i<size;i++){
    if (shapes.isNull(nf(i,3))) {
      //println("n");
      continue; 
    }
    JSONObject work = shapes.getJSONObject(nf(i,3));
    //println(shapes.get(nf(i,3)));
    println(work.getString("localizationKey"));
  }
  */
  
}