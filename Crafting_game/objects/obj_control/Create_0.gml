/// @desc Create listener

root = "highscores";
listener = FirebaseFirestore(root).Listener();

data = -1;

sort_score = function(_a, _b)
{
	return _b.score - _a.score;
}