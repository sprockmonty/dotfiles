const char *colorname[] = {{

  /* 8 normal colors */
  [0] = "#0A1729", /* black   */
  [1] = "{color1}", /* red     */
  [2] = "{color2}", /* green   */
  [3] = "{color3}", /* yellow  */
  [4] = "{color4}", /* blue    */
  [5] = "{color5}", /* magenta */
  [6] = "{color6}", /* cyan    */
  [7] = "#fafcfd", /* white   */

  /* 8 bright colors */
  [8]  = "{color8}",  /* black   */
  [9]  = "{color9}",  /* red     */
  [10] = "{color10}", /* green   */
  [11] = "{color11}", /* yellow  */
  [12] = "{color12}", /* blue    */
  [13] = "{color13}", /* magenta */
  [14] = "{color14}", /* cyan    */
  [15] = "#fafcfd", /* white   */

  /* special colors */
  [256] = "#0A1729", /* background */
  [257] = "#fafcfd", /* foreground */
  [258] = "#fafcfd",     /* cursor */
}};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
