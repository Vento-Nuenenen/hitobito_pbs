# Hitobito PBS

This hitobito wagon defines the organization hierarchy with groups and roles of Pfadibewegung Schweiz.

# Pfadi Organization Hierarchy

    * Bund
      * Bund
        * Mitarbeiter GS: [:layer_and_below_full, :contact_data, :admin]
        * IT Support: [:layer_and_below_full, :contact_data, :admin, :impersonation]
        * Sekretariat: [:layer_and_below_full, :contact_data]
        * Adressverwalter: [:layer_and_below_full]
        * Assistenz Ausbildung: [:layer_full]
        * Präsident: [:group_read, :contact_data]
        * Vize Präsident: [:group_read, :contact_data]
        * Präsident APV: [:group_read]
        * Geschäftsleiter: [:layer_and_below_read, :contact_data, :approve_applications]
        * Mitarbeiter: [:group_read, :contact_data]
        * Vertreter PBS: [:group_read, :contact_data]
        * Beisitzer: [:group_read]
        * Kassier: [:layer_and_below_read, :contact_data]
        * Revisor: [:group_read, :contact_data]
        * Redaktor: [:layer_and_below_read, :contact_data]
        * Webmaster: [:group_read, :contact_data]
        * Mediensprecher: [:group_read, :contact_data]
        * Übersetzer: [:group_read, :contact_data]
        * Mitglied Krisenteam: [:group_read, :contact_data]
        * Coach: [:layer_and_below_read, :contact_data]
        * Grossanlass Coach: [:group_read, :contact_data]
        * Leiterkursbetreuer: [:group_read, :contact_data]
        * Leitung Kernaufgabe Ausbildung: [:layer_full, :group_read, :contact_data, :approve_applications]
        * Leitung Kernaufgabe Kommunikation: [:group_read, :contact_data]
        * Leitung Kernaufgabe Programm: [:group_read, :contact_data]
        * Leitung Kernaufgabe Support: [:group_read, :contact_data]
        * Verantwortlicher Biberstufe: [:group_read, :contact_data]
        * Verantwortlicher Wolfstufe: [:group_read, :contact_data]
        * Verantwortlicher Pfadistufe: [:group_read, :contact_data]
        * Verantwortlicher Piostufe: [:group_read, :contact_data]
        * Verantwortlicher Roverstufe: [:group_read, :contact_data]
        * Verantwortlicher Pfadi Trotz Allem: [:group_read, :contact_data]
        * Verantwortlicher Integration: [:group_read, :contact_data]
        * Verantwortlicher Lagermeldung: [:group_read, :contact_data]
        * Verantwortlicher PR: [:group_read, :contact_data]
        * Verantwortlicher Prävention: [:group_read, :contact_data]
        * International Commissioner IC WAGGGS: [:group_read, :contact_data]
        * International Commissioner IC WOSM: [:group_read, :contact_data]
        * Stv IC Programme WAGGGS: [:group_read, :contact_data]
        * Stv IC Programme WOSM: [:group_read, :contact_data]
        * Spezialfunktion: [:group_read]
        * Ehrenmitglied: []
        * Passivmitglied: []
        * Kontaktperson: [:contact_data]
      * Ausbildungskommission
        * Mitglied: [:group_read, :contact_data]
      * Gremium
        * Leitung: [:group_and_below_full]
        * Mitglied: [:group_read]
      * Kommission
        * Leitung: [:group_and_below_full, :layer_and_below_read]
        * Mitglied: [:layer_and_below_read]
    * Kantonalverband
      * Kantonalverband
        * Kantonsleiter: [:layer_and_below_full, :contact_data, :approve_applications]
        * Sekretariat: [:layer_and_below_full, :contact_data]
        * Adressverwalter: [:layer_and_below_full]
        * Präsident: [:group_read, :contact_data]
        * Vize Präsident: [:group_read, :contact_data]
        * Präsident APV: [:group_read]
        * Mitarbeiter: [:group_read, :contact_data]
        * Beisitzer: [:group_read]
        * Kassier: [:layer_and_below_read, :contact_data]
        * Revisor: [:group_read, :contact_data]
        * Redaktor: [:layer_and_below_read, :contact_data]
        * Webmaster: [:group_read, :contact_data]
        * Mediensprecher: [:group_read, :contact_data]
        * Übersetzer: [:group_read, :contact_data]
        * Mitglied Krisenteam: [:group_read, :contact_data]
        * Coach: [:layer_and_below_read, :contact_data]
        * Leiterkursbetreuer: [:group_read, :contact_data]
        * Verantwortlicher Biberstufe: [:group_read, :contact_data]
        * Verantwortlicher Wolfstufe: [:group_read, :contact_data]
        * Verantwortlicher Pfadistufe: [:group_read, :contact_data]
        * Verantwortlicher Piostufe: [:group_read, :contact_data]
        * Verantwortlicher Roverstufe: [:group_read, :contact_data]
        * Verantwortlicher Pfadi Trotz Allem: [:group_read, :contact_data]
        * Verantwortlicher Abteilungen: [:group_read, :contact_data]
        * Verantwortlicher Animation Spirituelle: [:group_read, :contact_data]
        * Verantwortlicher Ausbildung: [:layer_full, :layer_and_below_read, :contact_data, :approve_applications]
        * Verantwortlicher Betreuung: [:group_read, :contact_data]
        * Verantwortlicher Integration: [:group_read, :contact_data]
        * Verantwortlicher Internationales: [:group_read, :contact_data]
        * Verantwortlicher kantonales Suchtpräventionsprogramm: [:group_read, :contact_data]
        * Verantwortlicher Kantonsarchiv: [:group_read, :contact_data]
        * Verantwortlicher Krisenteam: [:group_read, :contact_data]
        * Verantwortlicher Lagermeldung: [:group_read, :contact_data]
        * Verantwortlicher Lagerplätze: [:group_read, :contact_data]
        * Verantwortlicher Materialverkaufsstelle: [:group_read, :contact_data]
        * Verantwortlicher PR: [:group_read, :contact_data]
        * Verantwortlicher Prävention: [:group_read, :contact_data]
        * Verantwortlicher Programm: [:group_read, :contact_data]
        * Spezialfunktion: [:group_read]
        * Ehrenmitglied: []
        * Passivmitglied: []
      * Gremium
        * Leitung: [:group_and_below_full]
        * Mitglied: [:group_read]
      * Kommission
        * Leitung: [:group_and_below_full, :layer_and_below_read]
        * Mitglied: [:layer_and_below_read]
    * Region
      * Region
        * Regionsleiter: [:layer_and_below_full, :contact_data, :approve_applications]
        * Sekretariat: [:layer_and_below_full, :contact_data]
        * Adressverwalter: [:layer_and_below_full]
        * Präsident: [:group_read, :contact_data]
        * Vize Präsident: [:group_read, :contact_data]
        * Präsident APV: [:group_read]
        * Präses: [:group_read, :contact_data]
        * Mitarbeiter: [:group_read, :contact_data]
        * Beisitzer: [:group_read]
        * Kassier: [:layer_and_below_read, :contact_data]
        * Revisor: [:group_read, :contact_data]
        * Redaktor: [:layer_and_below_read, :contact_data]
        * Webmaster: [:group_read, :contact_data]
        * Mediensprecher: [:group_read, :contact_data]
        * Mitglied Krisenteam: [:group_read, :contact_data]
        * Coach: [:layer_and_below_read, :contact_data]
        * Leiterkursbetreuer: [:group_read, :contact_data]
        * Verantwortlicher Biberstufe: [:group_read, :contact_data]
        * Verantwortlicher Wolfstufe: [:group_read, :contact_data]
        * Verantwortlicher Pfadistufe: [:group_read, :contact_data]
        * Verantwortlicher Piostufe: [:group_read, :contact_data]
        * Verantwortlicher Roverstufe: [:group_read, :contact_data]
        * Verantwortlicher Pfadi Trotz Allem: [:group_read, :contact_data]
        * Verantwortlicher Abteilungen: [:group_read, :contact_data]
        * Verantwortlicher Animation Spirituelle: [:group_read, :contact_data]
        * Verantwortlicher Ausbildung: [:layer_full, :layer_and_below_read, :contact_data, :approve_applications]
        * Verantwortlicher Betreuung: [:group_read, :contact_data]
        * Verantwortlicher Integration: [:group_read, :contact_data]
        * Verantwortlicher Internationales: [:group_read, :contact_data]
        * Verantwortlicher kantonales Suchtpräventionsprogramm: [:group_read, :contact_data]
        * Verantwortlicher Krisenteam: [:group_read, :contact_data]
        * Verantwortlicher Lagermeldung: [:group_read, :contact_data]
        * Verantwortlicher Lagerplätze: [:group_read, :contact_data]
        * Verantwortlicher Materialverkaufsstelle: [:group_read, :contact_data]
        * Verantwortlicher PR: [:group_read, :contact_data]
        * Verantwortlicher Prävention: [:group_read, :contact_data]
        * Verantwortlicher Programm: [:group_read, :contact_data]
        * Spezialfunktion: [:group_read]
        * Ehrenmitglied: []
        * Passivmitglied: []
      * Rover
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Rover: []
      * Gremium
        * Leitung: [:group_and_below_full]
        * Mitglied: [:group_read]
      * Kommission
        * Leitung: [:group_and_below_full, :layer_and_below_read]
        * Mitglied: [:layer_and_below_read]
    * Abteilung
      * Abteilung
        * Abteilungsleiter: [:layer_and_below_full, :contact_data, :approve_applications]
        * Abteilungsleiter Stv: [:layer_and_below_full, :contact_data, :approve_applications]
        * Sekretariat: [:layer_and_below_full, :contact_data]
        * Adressverwalter: [:layer_full]
	      * PowerUser: [:layer_full]
        * Präsident: [:group_read, :contact_data]
        * Vize Präsident: [:group_read, :contact_data]
        * Präsident APV: [:group_read]
        * Präses: [:group_read]
        * Beisitzer: [:group_read]
        * Materialwart: [:group_read]
        * Heimverwalter: [:group_read, :contact_data]
        * Stufenleiter Biber: [:layer_and_below_read]
        * Stufenleiter Wölfe: [:layer_and_below_read]
        * Stufenleiter Pfadi: [:layer_and_below_read]
        * Stufenleiter Pio: [:layer_and_below_read]
        * Stufenleiter Rover: [:layer_and_below_read]
        * Stufenleiter PTA: [:layer_and_below_read]
        * Kassier: [:layer_and_below_read, :contact_data]
        * Revisor: [:group_read, :contact_data]
        * Redaktor: [:layer_and_below_read, :contact_data]
        * Webmaster: [:group_read, :contact_data]
        * Coach: [:layer_and_below_read, :contact_data]
        * Verantwortlicher Materialverkaufsstelle: [:group_read, :contact_data]
        * Verantwortlicher Pfadi Trotz Allem: [:group_read, :contact_data]
        * Verantwortlicher PR: [:group_read, :contact_data]
        * Spezialfunktion: [:group_read]
        * Ehrenmitglied: []
        * Passivmitglied: []
      * Biber
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Biber: []
      * Wölfe
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Leitwolf: []
        * Wolf: []
      * Pfadi
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Leitpfadi: [:group_read]
        * Pfadi: []
      * Pio
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Pio: []
      * Rover
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Rover: []
      * PTA
        * Einheitsleiter: [:layer_and_below_read]
        * Mitleiter: [:layer_and_below_read]
        * Adressverwalter: [:group_and_below_full]
        * Mitglied: []
      * Elternrat
        * Präsident: [:group_full]
        * Mitglied: [:group_read]
      * Gremium
        * Leitung: [:group_and_below_full]
        * Mitglied: [:group_read]

(Output of rake app:hitobito:roles)
