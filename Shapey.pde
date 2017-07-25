class Shapey{
  int id;
  String name;
  String[] keywords;
  
 Shapey(String _n){
    String[] g = split(_n,"_");
    id = int(g[g.length-1]);
    g = shorten(g);
    name = join(g,"_");
 }
 void setName(String _n){
   name = _n.substring(0,_n.length()-4);
 }
 void setKey(String _k){
   keywords = split(_k,";;");
 }
 void pr(){
   println(id+" "+name+" "+join(keywords,","));
 }
}