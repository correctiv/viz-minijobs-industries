import {topIndustries} from '../scripts/data.js'
import './div-bars/grouped-bars-horizontal.tag'

<cor-mj-industries-main class={ getClass('viz-section') }>

  <grouped-bars-horizontal ref='grouped-bars-horizontal'
    groups={ data }
    grouplabel='name'
    labelformat={ labelformat }
    initlegend={ ['Minijob', 'Sozialversicherungspflichtig'] }
    cols={ ['gb_t_relv', 'svb_t_relv'] }
    modifiers={ ['gb', 'svb'] }
    scale=7.5
  />

  <section class={ getClass('annotation') }>
    Die angegebenen Prozentwerte beziehen sich jeweils auf die Gesamtzahl der Menschen,
    die in Minijobs bzw. sozialversicherungspflichtigen Beschäftigungen arbeiten.
  </section>

  this.data = topIndustries
  this.labelformat = v => v.toString().replace('.', ',') + ' %'

</cor-mj-industries-main>
