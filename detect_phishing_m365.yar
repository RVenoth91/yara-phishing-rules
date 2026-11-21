rule Phishing_Kit_Microsoft365_Generic
{
    meta:
        description = "Detection d'une fausse page de connexion Microsoft 365 (Phishing Kit)"
        author = "Venoth RAJASEKARAN (RVenoth91)"
        date = "2026-11-21"
        reference = "Premiere regle YARA - Entrainement Threat Intelligence"

    strings:
        $brand1 = "Sign in to your account" nocase
        $brand2 = "Microsoft" nocase
        $brand3 = "login.microsoftonline.com" nocase

        $form1 = "<form" nocase
        $form2 = "type=\"password\"" nocase
        $exfil1 = "api.telegram.org" nocase
        $exfil2 = ".php" nocase

    condition:
        filesize < 500KB and
        2 of ($brand*) and
        all of ($form*) and
        1 of ($exfil*)
}