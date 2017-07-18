<stacked-barh class={ getClass() }>

  <div class={ getClass('bar-outer', opts.modifier) }>
    <div each={ opts.data }
      class={ getClass('bar', modifier) }
      style="width:{ value }%;">
      <span class={ getClass('bar__label', modifier) }>{ label }</span>
    </div>
  </div>

</stacked-barh>
