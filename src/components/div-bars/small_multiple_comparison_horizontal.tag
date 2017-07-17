<small-multiple-comparisonh class={ getClass() }>
  <div class={ getClass('row', 'header') }>
    <div each={ group in opts.groups } class={ getClass('column') }>
      <header class={ getClass('header') }>
        <h4 class={ getClass('header__title') }>{ group.title }</h4>
        <div class={ getClass('legend') }>
          <ul class={ getClass('legend__list') }>
            <li each={ field in group.fields } class={ getClass('legend__item')}>
              <span class={ getClass('legend__item-square', field[0]) } />
              { field[1] }
            </li>
          </ul>
        </div>
      </header>
    </div>
  </div>
  <div each={ row in opts.data } class={ getClass('row')}>
    <h4 class={ getClass('row__label' ) }>{ row[parent.opts.labelfield] }</h4>
    <div each={ group in parent.opts.groups } class={ getClass('column') }>
      <div each={ prefix in parent.parent.opts.prefixes } class={ getClass('bar-outer') }>
        <div each={ field in group.fields }
          class="{ getClass('bar', field[0]) } { getClass('bar') }--{ prefix }"
          style="width:{ row[prefix + field[0]] - .1 }%;" />
        </div>
      </div>
    </div>
  </div>
</small-multiple-comparisonh>
