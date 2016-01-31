# Load-save-variables-prefferece

Store data from variables in a textfile on your hardrive.

Processing (Java)

EXAMPLE:

Preference myPrefs = new Preference();

myPrefs.loadPref();

myPrefs.setText("coffee", "brown", false);        //setPref(key, value, saveItToDiskNow)

println( myPrefs.getText("coffee") );
  
myPrefs.savePref();


COMANDS:

//catch data from tekstfile
loadPref()

//store data from tekstfile
savePref()


//Chage a value(String) for a key(String). Add if key not exist.  saveItToDiskNow (boolean true/false)
setText(key, value, saveItToDiskNow)          


//Chage a value(Float/int) for a key(String). Add if key not exist.  saveItToDiskNow (boolean true/false)
setNumber(key, value, saveItToDiskNow)

//Return values as text(String) for a given Key(String)
getText(key)

//Return values as number(Float) for a given Key(String)
getFloat(key)

//Return values as number(Int) for a given Key(String)
getInt(key)
