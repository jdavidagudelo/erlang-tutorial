Basic server:

    c(kitty_server).
    rr(kitty_server).
    Pid = kitty_server:start_link().
    Cat1 = kitty_server:order_cat(Pid, carl, brown, "loves to burn bridges").
    kitty_server:return_cat(Pid, Cat1).
    kitty_server:order_cat(Pid, jimmy, orange, "cuddly").
    kitty_server:order_cat(Pid, jimmy, orange, "cuddly").
    kitty_server:return_cat(Pid, Cat1).
    kitty_server:close_shop(Pid).

Basic gen_server:

    c(kitty_gen_server).
    rr(kitty_gen_server).
    {ok, Pid} = kitty_gen_server:start_link().
    Pid ! <<"Test handle_info">>.
    Cat = kitty_gen_server:order_cat(Pid, "Cat Stevens", white, "not actually a cat").
    kitty_gen_server:return_cat(Pid, Cat).
    kitty_gen_server:order_cat(Pid, "Kitten Mittens", black, "look at them little paws!").
    kitty_gen_server:order_cat(Pid, "Kitten Mittens", black, "look at them little paws!").
    kitty_gen_server:return_cat(Pid, Cat).
    kitty_gen_server:close_shop(Pid).
