

function showToptip(tagFocus, tagNotify, tagTrans, value, pos, type, time)
{
    $(tagFocus).focus();
    $(tagNotify).notify(
                    value,
                    {
                        position: pos,
                        className: type,
                        autoHideDelay: time,
                    }
                );
    $(tagTrans).transition('shake');
}

function ShowModal(e) {
    $(e).modal({
        dimmerSettings: { opacity: 0.5 }
    }).modal('setting', 'closable', false).modal('setting', 'duration', 200).modal('show');
}