/**
 * Load and save variables prefferece 
 * 
 * Store data from variables in a textfile on your hardrive.
 * 
 * By Ben-Tommy Eriksen
 * ben@nornet.no
 * www.nornet.no
 */

Preference nyPrefs = new Preference();

void setup() {
  nyPrefs.loadPref();
  
  nyPrefs.setText("coffee", "brown", false);        //setPref(key, value, saveItToDiskNow)
  
  println( nyPrefs.getText("coffee") );
  
  nyPrefs.savePref();
}

void draw() {

}
