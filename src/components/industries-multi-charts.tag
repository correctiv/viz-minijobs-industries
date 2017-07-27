import {smamuIndustries} from '../scripts/data.js'
import './industry-chart/industry-chart.tag'

<cor-mj-industries-multi-charts class={ getClass('viz-section') }>
  <industry-chart each={ data in data } data={ data } css='industry-chart' />

  this.data = smamuIndustries
</cor-mj-industries-multi-charts>
