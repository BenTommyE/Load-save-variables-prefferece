/*
 * Load and save variables prefferece 
 * 
 * Store data from variables in a textfile on your hardrive.
 * 
 * By Ben-Tommy Eriksen
 * ben@nornet.no
 * www.nornet.no
 */

class Preference {
  
  StringDict PreferencesDict = new StringDict();      //Make an String Dictionary
  String preferencesFileName = "Preferences.txt";
  
  Preference() {
    
  }
  
  void setText(String _key, String _value, boolean saveItToDiskNow) {
    PreferencesDict.set(_key, _value);                                              //Chage a value for a key. Add if key not exist
    
    if(saveItToDiskNow) {                                                           //Save it automatic now or manual later
      savePref();
    }
  }
  
  void setNumber(String _key, float _value, boolean saveItToDiskNow) {
    PreferencesDict.set(_key, str(_value));                                         //Chage a value for a key. Add if key not exist
    
    if(saveItToDiskNow) {                                                           //Save it automatic now or manual later
      savePref();
    }
  }
  
  String getText(String _key) {
    return PreferencesDict.get(_key);                                               //return a value for a key
  }
  
  float getFloat(String _key) {
    return float(PreferencesDict.get(_key));                                        //return a value for a key as an float
  }
  
  int getInt(String _key) {
    return int(PreferencesDict.get(_key));                                          //return a value for a key as an integer
  }
  
  void loadPref() {
    String lines[] = loadStrings(preferencesFileName);                              //Load all prefferences lines in textfile from disk

    for (int i = 1 ; i < lines.length; i++) {                                       //Loop thru all lines - but not the header
      String[] PreferencesLoadLineArr = split(lines[i], "=");                       //Split into variable and value
      if(PreferencesLoadLineArr.length == 2) {                                      //Check if it is an variable separated by an =
        PreferencesDict.set(PreferencesLoadLineArr[0],PreferencesLoadLineArr[1]);   //put variable and value in String Dictionary
      }
    }
    
    println(PreferencesDict);                                                        //Print content (for debugging)
    
  }
  
  void savePref() {
    String[] preferencesFileContent = {"Preferences:"};                              //Make contenfile and add headder text
    
    for (String k : PreferencesDict.keys()) {                                        //Loop thru all variable
      String appendString = k + "=" + PreferencesDict.get(k);                        //Put variable and value in a line
      preferencesFileContent = append(preferencesFileContent, appendString);         //add the line to contenfile
    }
    
    saveStrings(preferencesFileName, preferencesFileContent);                        //Save contenfile to disk;
    
    println(PreferencesDict);                                                        //Print content (for debugging)
    
  }
  
}
