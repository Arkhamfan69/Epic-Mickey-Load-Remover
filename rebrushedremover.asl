state("recolored-Win64-Shipping")
{
    //byte loading: 0x056B73A8, 0x18;
    byte loading: 0x0522E878, 0xE0, 0x60;
}

exit
{
    //pauses timer if the game crashes
	timer.IsGameTimePaused = true;
}

onStart
{
    vars.completedSplits.Clear();

    // This makes sure the timer always starts at 0.00
    timer.IsGameTimePaused = true;
}

isLoading
{
    //return current.loading == 144 || current.loading == null;
    return current.loading == 1 || current.loading == null;
}

//82C5C0
//8335D2
