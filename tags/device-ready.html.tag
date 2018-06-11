<device-ready id="deviceready">
    <p class="event listening" hide="{received}">Connecting to Device</p>
    <p class="event received" show="{received}">Device is Ready</p>
    <script>
        var tag = this;
        tag.received = false;
        console.log('The script is loading!');
        tag.deviceReady = {
            // Application Constructor
            initialize: function() {
                document.addEventListener('deviceready', this.onDeviceReady.bind(this), false);
            },

            // deviceready Event Handler
            //
            // Bind any cordova events here. Common events are:
            // 'pause', 'resume', etc.
            onDeviceReady: function() {
                this.receivedEvent();
            },

            // Update DOM on a Received Event
            receivedEvent: function() {
                tag.received = true;
                tag.update();

                console.log('Received Event!');
            }
        };

        tag.deviceReady.initialize();
    </script>
</device-ready>
