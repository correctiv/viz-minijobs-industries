import {smamuGroups, industryStories} from '../../scripts/data.js'
import '../div-bars/stacked-barh.tag'

<industry-chart class={ getClass() }>
  <h3 class={ getClass('title') }>{ opts.data.name }</h3>
  <p class={ getClass('description') }>{ getDesc(opts.data.name) }</p>
  <div class={ getClass('charts-wrapper') }>
    <div each={ group in groups } class={ getClass('chart') }>
      <h4 class={ getClass('chart__label') }>{ group.title }</h4>
      <div class={ getClass('chart__bars-container') }>
        <div each={ suffix, i in ['gb', 'svb']} class={ getClass('chart__stacked-barh', suffix) }>
          <span if={ !i } class={ getClass('chart__stacked-barh__label') }>
            { labels[i] }: <strong>{ getValue(group, suffix )}&nbsp;%</strong>
          </span>
          <stacked-barh
            data={ parent.parent.getData(group, suffix) }
            modifier={ group.field }
            css='stacked-barh' />
          <span if={ i } class={ getClass('chart__stacked-barh__label') }>
            { labels[i] }: <strong>{ getValue(group, suffix )}&nbsp;%</strong>
          </span>
        </div>
      </div>
    </div>
  </div>

  this.groups = smamuGroups
  this.labels = ['Minijobs', 'SV-Beschäftigungen']
  this.getDesc = name => industryStories[name]
  this.getValue = ({field}, suffix) => +this.opts.data[`${suffix}_${field}`]
  this.getData = ({field}, suffix) => {
    const value = this.getValue({field}, suffix)
    return [value, 100-value].map((val, i) => {
      return {
        value: val,
        // label: this._f(val) + ' %',
        modifier: ['full', 'empty'][i]
      }
    })
  }
</industry-chart>
