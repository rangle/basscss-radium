# basscss-radium
<img src="./tag.png" width="48"> Basscss as Radium-flavoured inline
styles.


## Getting Started
```
npm install --save basscss-radium
```

## Usage

### Example
```
const React = require('react');
const Radium = require('radium');
const Bass = require('basscss-radium');

/**
 * Badges are used to represent properties and states and to tease
 * quantities of resources behind navigation links. Use basic utilities
 * and color styles to create badges.
 */
const Badge = ({ text }) => {
  return (
    <span style={[
      Bass.h2,
      Bass.inlineBlock,
      Bass.px1,
      Bass.white,
      Bass.bgRed,
      Bass.rounded,
    ]}>
      { text }
    </span>
  );
};

Badge.displayName = 'Badge';
Badge.propTypes = {
  /**
   * Text displayed in the badge.
   */
  text: React.PropTypes.string,
};

module.exports = Radium(Badge);
```
##### Pssst...you can also jump into the [playground to see it in action](https://tonicdev.com/bertrand/basscss-radium).*

\*You can fork the notebook and skip signup to modify the example to your heart's content.

### Known issues

#### .clearfix
To clear floats, you will need to create two extra elements; one before and one after.  

```
...
render() {
  return (
    <div style={[
      Bass.border,
      Bass.borderBlue
    ]}>
      <span style={ Bass['clearfix:before'] }/>
      <div style={[
        Bass.left,
        Bass.border,
        Bass.borderBlue
      ]}>.left</div>
      <div style={[
        Bass.right,
        Bass.border,
        Bass.borderBlue
      ]}>.right</div>
      <span style={ Bass['clearfix:after'] }/>
    </div>
  );
}
...
```
##### [See it in action](https://tonicdev.com/bertrand/basscss-radium-clearfix)


## Documentation

Check out [the official Basscss documentation](http://www.basscss.com/docs/) for detailed usage information. For nearly all classes supported, all you have to do is use the camelCase form instead of dash-case (i.e. `border-blue` -> `borderBlue`).

### Available classes 

`body` ● `img` ● `svg` ● `input` ● `select` ● `textarea` ● `fieldset` ● `label` ● `input[type=text]` ● `input[type=date]` ● `input[type=datetime]` ● `input[type=datetimeLocal]` ● `input[type=email]` ● `input[type=month]` ● `input[type=number]` ● `input[type=password]` ● `input[type=search]` ● `input[type=tel]` ● `input[type=time]` ● `input[type=url]` ● `input[type=week]` ● `select:not([multiple])` ● `table` ● `th` ● `td` ● `h1` ● `h2` ● `h3` ● `h4` ● `h5` ● `h6` ● `p` ● `dl` ● `ol` ● `ul` ● `pre` ● `code` ● `samp` ● `a` ● `hr` ● `field` ● `fieldIsFocused` ● `field:disabled` ● `fieldIsDisabled` ● `field:readOnly:not(select)` ● `fieldIsReadOnly` ● `fieldIsSuccess` ● `fieldIsSuccessIsFocused` ● `fieldIsWarning` ● `fieldIsWarningIsFocused` ● `field:invalid` ● `fieldIsError` ● `field:invalid:focus` ● `field:invalidIsFocused` ● `fieldIsErrorIsFocused` ● `tableLightTh` ● `tableLightTd` ● `tableLightTr:lastChildTd` ● `btn` ● `::MozFocusInner` ● `btnPrimary` ● `btnPrimary:disabled` ● `btnPrimaryIsDisabled` ● `btnOutline` ● `btnOutline:disabled` ● `btnOutlineIsDisabled` ● `bold` ● `regular` ● `italic` ● `caps` ● `leftAlign` ● `center` ● `rightAlign` ● `justify` ● `nowrap` ● `breakWord` ● `truncate` ● `listReset` ● `inline` ● `block` ● `inlineBlock` ● `tableCell` ● `overflowHidden` ● `overflowScroll` ● `overflowAuto` ● `clearfix:before` ● `clearfix:after` ● `left` ● `right` ● `fit` ● `borderBox` ● `alignBaseline` ● `alignTop` ● `alignMiddle` ● `alignBottom` ● `m0` ● `mt0` ● `mr0` ● `mb0` ● `ml0` ● `m1` ● `mt1` ● `mr1` ● `mb1` ● `ml1` ● `m2` ● `mt2` ● `mr2` ● `mb2` ● `ml2` ● `m3` ● `mt3` ● `mr3` ● `mb3` ● `ml3` ● `m4` ● `mt4` ● `mr4` ● `mb4` ● `ml4` ● `mxn1` ● `mxn2` ● `mxn3` ● `mxn4` ● `mxAuto` ● `p0` ● `p1` ● `py1` ● `px1` ● `p2` ● `py2` ● `px2` ● `p3` ● `py3` ● `px3` ● `p4` ● `py4` ● `px4` ● `relative` ● `absolute` ● `fixed` ● `top0` ● `right0` ● `bottom0` ● `left0` ● `z1` ● `z2` ● `z3` ● `z4` ● `smShow` ● `mdShow` ● `lgShow` ● `smHide` ● `mdHide` ● `lgHide` ● `displayNone` ● `hide` ● `container` ● `col` ● `colRight` ● `col1` ● `col2` ● `col3` ● `col4` ● `col5` ● `col6` ● `col7` ● `col8` ● `col9` ● `col10` ● `col11` ● `col12` ● `smCol` ● `smColRight` ● `smCol1` ● `smCol2` ● `smCol3` ● `smCol4` ● `smCol5` ● `smCol6` ● `smCol7` ● `smCol8` ● `smCol9` ● `smCol10` ● `smCol11` ● `smCol12` ● `mdCol` ● `mdColRight` ● `mdCol1` ● `mdCol2` ● `mdCol3` ● `mdCol4` ● `mdCol5` ● `mdCol6` ● `mdCol7` ● `mdCol8` ● `mdCol9` ● `mdCol10` ● `mdCol11` ● `mdCol12` ● `lgCol` ● `lgColRight` ● `lgCol1` ● `lgCol2` ● `lgCol3` ● `lgCol4` ● `lgCol5` ● `lgCol6` ● `lgCol7` ● `lgCol8` ● `lgCol9` ● `lgCol10` ● `lgCol11` ● `lgCol12` ● `flex` ● `flexColumn` ● `flexWrap` ● `flexCenter` ● `flexBaseline` ● `flexStretch` ● `flexStart` ● `flexEnd` ● `flexJustify` ● `flexAuto` ● `flexGrow` ● `flexNone` ● `flexFirst` ● `flexLast` ● `smFlex` ● `mdFlex` ● `lgFlex` ● `border` ● `borderTop` ● `borderRight` ● `borderBottom` ● `borderLeft` ● `borderNone` ● `rounded` ● `circle` ● `roundedTop` ● `roundedRight` ● `roundedBottom` ● `roundedLeft` ● `notRounded` ● `black` ● `gray` ● `silver` ● `white` ● `aqua` ● `blue` ● `navy` ● `teal` ● `green` ● `olive` ● `lime` ● `yellow` ● `orange` ● `red` ● `fuchsia` ● `purple` ● `maroon` ● `colorInherit` ● `muted` ● `bgBlack` ● `bgGray` ● `bgSilver` ● `bgWhite` ● `bgAqua` ● `bgBlue` ● `bgNavy` ● `bgTeal` ● `bgGreen` ● `bgOlive` ● `bgLime` ● `bgYellow` ● `bgOrange` ● `bgRed` ● `bgFuchsia` ● `bgPurple` ● `bgMaroon` ● `bgDarken1` ● `bgDarken2` ● `bgDarken3` ● `bgDarken4` ● `bgLighten1` ● `bgLighten2` ● `bgLighten3` ● `bgLighten4`


**If there is a class missing you'd like to see, [please let us know](https://github.com/rangle/basscss-radium/issues/new).**

## Motivation

**Why not just use class names or React components wrapping those class names?**

Because data composition is _simpler_ and _easier_ than CSS class or component composition (through [HOC](https://medium.com/@dan_abramov/mixins-are-dead-long-live-higher-order-components-94a0d2f9e750#.85tdsaexf)).

```
// AcmeStyles.js

var deepAssign = require('deep-assign');
const Bass = require('basscss-radium');

const AcmeBase = {
  btnPrimary: {
    backgroundColor: '#337ab7',
  },
  code: {
    fontFamily: '\'Inconsolata\', Consolas, monospace',
  },
};

module.exports = deepAssign(Bass, AcmeBase);

```
As it turns out, [there is a lot of value in dealing with values](https://www.youtube.com/watch?v=-6BsiVyC1kM).


## Support

We're always around to help. If you run into any issues, or simply have a question, please [open an issue](https://github.com/rangle/basscss-radium/issues/new): https://github.com/rangle/basscss-radium/issues


## Credits and License
[Brent Jackson](https://github.com/jxnblk) (jxnblk.com) is the original
creator and maintainer of [Basscss](https://github.com/basscss/basscss).
We encourage you to take a look at
[Rebass](https://github.com/jxnblk/rebass) for an alternative to using
Basscss with React.

This program is free software: you can redistribute it and/or modify it
under the terms of the [MIT
LICENSE](http://opensource.org/licenses/MIT).
