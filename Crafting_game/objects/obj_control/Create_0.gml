/// @desc Create listener
root = "highscores";
listener = FirebaseFirestore(root).Listener();
data = -1;

sort_score = function(_a, _b) {
    // Compare levels first
    if (_b.lvl != _a.lvl) {
        return _b.lvl - _a.lvl;
    }
    // If levels are the same, compare coins
    if (_b.coins != _a.coins) {
        return _b.coins - _a.coins;
    }
    // If levels and coins are the same, keep the original order (newest entries are at the top)
    return 0;
}