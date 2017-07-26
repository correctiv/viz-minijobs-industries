import './stacked-barh.tag'

<stacked-barhs class={ getClass() }>

  <div class={ getClass('legend') }>
    <div each={ label, i in opts.legend }
      class={ getClass('legend__item', parent.opts.modifiers[i]) }><span />{ label }
    </div>
  </div>

  <div each={ data in opts.data }
    class={ getClass('container') }>
    <span class={ getClass('label') }>{ data[parent.opts.barlabels] }</span>
    <span class={ getClass('sub-label') }>Minijobber insgesamt: { _f(data.gb_t) }</span>
    <stacked-barh
      data={ parent.getData(data) }
      css='stacked-barh' />
  </div>

  <div class={ getClass('legend') }>
    <div each={ label, i in opts.legend }
      class={ getClass('legend__item', parent.opts.modifiers[i]) }><span />{ label }
    </div>
  </div>

  this.getData = data => this.opts.cols.map((c, i) => {
    const value = data[c]
    return {
      value,
      label: this.opts.labelformat(value),
      modifier: this.opts.modifiers[i]
    }
  })

</stacked-barhs>
