// https://github.com/ruby/ruby/blob/trunk/insns.def#L43L67

/**********************************************************/
/* deal with variables                                    */
/**********************************************************/

/**
  @c variable
  @e Get local variable (pointed by `idx' and `level').
     'level' indicates the nesting depth from the current block.
  @j level, idx で指定されたローカル変数の値をスタックに置く。
     level はブロックのネストレベルで、何段上かを示す。
 */
DEFINE_INSN
getlocal
(lindex_t idx, rb_num_t level)
()
(VALUE val)
{
    int i, lev = (int)level;
    VALUE *ep = GET_EP();

    for (i = 0; i < lev; i++) {
        ep = GET_PREV_EP(ep);
    }
    val = *(ep - idx);
}
