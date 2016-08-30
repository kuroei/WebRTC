var config = {
    hosts: {
        domain: '192.168.86.129',
        muc: 'conference.192.168.86.129', // FIXME: use XEP-0030
        bridge: 'jitsi-videobridge.192.168.86.129' // FIXME: use XEP-0030
    },
//  getroomnode: function (path) { return 'someprefixpossiblybasedonpath'; },
    useNicks: false,
    bosh: '192.168.86.129/http-bind' // FIXME: use xep-0156 for that
};
