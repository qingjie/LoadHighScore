
![Screenshot](screenshot.png)


--------

var HighScoreDefault = NSUserDefaults.standardUserDefaults()
HighScoreDefault.setValue(highscore, forKey: "highscore")
HighScoreDefault.synchronize()