if keyboard_check_released(ord("N")) {
    try {
        var name = get_string("Name: ", "");
        var coins = get_integer("Coins:", 0);
        var lvl = get_string("Level: ", "");

        // Validate inputs
        if (name != "" && is_real(coins) && is_real(lvl)) {
            var _doc = json_stringify({
                name: name,
                coins: coins,
                lvl: lvl
            });
            FirebaseFirestore(root).Set(_doc);
        }
    } catch (e) {
    }
}



if keyboard_check_released(ord("D")) and data != -1 and array_length(data) > 0 {
    var _doc = FirebaseFirestore(root).Child(data[0].id);
    _doc.Delete();
}