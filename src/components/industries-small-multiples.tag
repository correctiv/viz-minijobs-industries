import {smamuIndustries, smamuGroups} from '../scripts/data.js'
import './div-bars/small_multiple_comparison_horizontal.tag'

<cor-mj-industries-small-multiples class={ getClass('viz-section') }>
  <small-multiple-comparisonh
    ref='small-multiple-comparisonh'
    data={ data }
    labelfield='name'
    groups={ groups }
    prefixes={ ['gb_', 'svb_'] }
  />

  <section class={ getClass('annotation') }>
    * Anforderungsniveau aus der KldB2010
  </section>
  <section class={ getClass('annotation') }>
    Die Einteilung der Balken entspricht dem Anteil der Menschen in der entsprechenden
    Gruppe (Geschlecht / Staatsangehörigkeit / Anforderungsniveau / Berufsabschluss)
    an der Gesamtzahl der innerhalb der jeweiligen Branche Beschäftigten.
    <br>
    Kleinerer Balken: Daten für sozialversicherungspflichtig Beschäftigte.
  </section>

  this.data = smamuIndustries
  this.groups = smamuGroups

</cor-mj-industries-small-multiples>
