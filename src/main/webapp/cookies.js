function showBanner() {
    if (!localStorage.getItem("cookieConsent")) {
        document.getElementById("cookie-banner").style.display = "block";
    }
}

function acceptAll() {
    var consent = {
        analytics: true
    };

    localStorage.setItem("cookieConsent", JSON.stringify(consent));
    hideAll();
}

function rejectAll() {
    var consent = {
        analytics: false
    };

    localStorage.setItem("cookieConsent", JSON.stringify(consent));
    hideAll();
}

function openSettings() {
    document.getElementById("cookie-settings").style.display = "block";
}

function savePreferences() {
    var analytics = document.getElementById("analytics").checked;

    var consent = {
        analytics: analytics
    };

    localStorage.setItem("cookieConsent", JSON.stringify(consent));
    hideAll();
}

function hideAll() {
    document.getElementById("cookie-banner").style.display = "none";
    document.getElementById("cookie-settings").style.display = "none";
}

function checkConsent() {
    var consent = localStorage.getItem("cookieConsent");

    if (!consent) {
        showBanner();
        return;
    }

    try {
        var parsed = JSON.parse(consent);
		
        if (parsed.analytics) {
            console.log("Analytics permitido");
        }

    } catch (e) {
        localStorage.removeItem("cookieConsent");
        showBanner();
    }
}

window.onload = checkConsent;