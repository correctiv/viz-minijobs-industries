import {topIndustries} from '../scripts/data.js'
import './div-bars/stacked-barhs.tag'

<cor-mj-industries-main class={ getClass('viz-section') }>

  <stacked-barhs
    ref='stacked-barhs'
    data={ data }
    barlabels='name'
    labelformat={ labelformat }
    cols={ ['gb_t_rel', 'svb_t_rel'] }
    modifiers={ ['gb', 'svb'] }
    legend={ ['Minijobs', 'sozialversicherungspflichtig'] }
  />

  <section class={ getClass('annotation') }>
    Die angegebenen Prozentwerte beziehen sich jeweils auf die Summe der Menschen,
    die in Minijobs und sozialversicherungspflichtigen Beschäftigungen arbeiten.
  </section>

  this.data = topIndustries
  this.labelformat = v => this._f(v) + ' %'

</cor-mj-industries-main>
