// Sort Function
sort_score = function(_a, _b) {
    if (_b.lvl != _a.lvl) {
        return _b.lvl - _a.lvl;
    }
    if (_b.coins != _a.coins) {
        return _b.coins - _a.coins;
    }
    // Compare timestamps to ensure the latest entry appears on top
    return _b.timestamp - _a.timestamp;
}

// Create Event
root = "highscores";
listener = FirebaseFirestore(root).Listener();
data = -1;

// Retrieve global variables
var name = global.name;
var level = global.level;
var coins = global.coins;
var timestamp = current_time; // Add a timestamp

// Validate inputs
if (name != "" && is_real(coins) && is_real(level)) {
    var _doc = json_stringify({
        name: name,
        coins: coins,
        lvl: level,
        timestamp: timestamp // Include the timestamp
    });
    FirebaseFirestore(root).Set(_doc);
}