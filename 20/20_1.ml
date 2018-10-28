type color_t = Red | Black

type ('a, 'b) rb_tree_t =
    Empty
    | Node of color_t * 'a * 'b * color_t ;;
