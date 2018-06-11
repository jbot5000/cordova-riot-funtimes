<turd>
    <button onclick="{displayTurdness}">{text}</button>
    <div id="you-are-a-turd" if="{turdIsOn}">You are a 💩!</div>
    <script>
        var tag = this;
        tag.turdIsOn = false;
        tag.text = "Are you a turd?";

        tag.displayTurdness = () => {
            tag.turdIsOn = tag.turdIsOn ? false : true;
            tag.text = tag.turdIsOn ? "No I'm Not!" : "Are you a turd?";
        };

    </script>
</turd>
